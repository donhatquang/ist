<?php
/*
 * @package		Joomla.Framework
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 *
 * @component Phoca Component
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU General Public License version 2 or later;
 */
defined( '_JEXEC' ) or die();
jimport('joomla.application.component.modeladmin');
phocagalleryimport( 'phocagallery.utils.utils' );
phocagalleryimport( 'phocagallery.picasa.picasa' );
phocagalleryimport( 'phocagallery.facebook.fb' );
phocagalleryimport( 'phocagallery.facebook.fbsystem' );

class PhocaGalleryCpModelPhocaGalleryC extends JModelAdmin
{
	//protected 	$_XMLFile;
	//protected 	$_id;
	//protected 	$_data;
	protected	$option 		= 'com_phocagallery';
	protected 	$text_prefix	= 'com_phocagallery';
	
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->catid) {
			return $user->authorise('core.delete', 'com_phocagallery.phocagalleryc.'.(int) $record->catid);
		} else {
			return parent::canDelete($record);
		}
	}
	
	protected function canEditState($record)
	{
		$user = JFactory::getUser();

		if ($record->catid) {
			return $user->authorise('core.edit.state', 'com_phocagallery.phocagalleryc.'.(int) $record->catid);
		} else {
			return parent::canEditState($record);
		}
	}
	
	public function getTable($type = 'PhocaGalleryc', $prefix = 'Table', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}
	
	public function getForm($data = array(), $loadData = true) {
		
		$app	= JFactory::getApplication();
		$form 	= $this->loadForm('com_phocagallery.phocagalleryc', 'phocagalleryc', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}
		return $form;
	}
	
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_phocagallery.edit.phocagalleryc.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}

		return $data;
	}
	
	public function getItem($pk = null)
	{
		if ($item = parent::getItem($pk)) {
			// Convert the params field to an array.
			$registry = new JRegistry;
			$registry->loadJSON($item->metadata);
			$item->metadata = $registry->toArray();
		}

		return $item;
	}
	
	protected function prepareTable(&$table)
	{
		jimport('joomla.filter.output');
		$date = JFactory::getDate();
		$user = JFactory::getUser();

		$table->title		= htmlspecialchars_decode($table->title, ENT_QUOTES);
		$table->alias		= JApplication::stringURLSafe($table->alias);

		if (empty($table->alias)) {
			$table->alias = JApplication::stringURLSafe($table->title);
		}

		if (empty($table->id)) {
			// Set the values
			//$table->created	= $date->toMySQL();

			// Set ordering to the last item if not set
			if (empty($table->ordering)) {
				$db = JFactory::getDbo();
				$db->setQuery('SELECT MAX(ordering) FROM #__phocagallery_categories');
				$max = $db->loadResult();

				$table->ordering = $max+1;
			}
		}
		else {
			// Set the values
			//$table->modified	= $date->toMySQL();
			//$table->modified_by	= $user->get('id');
		}
	}
	
	
	protected function getReorderConditions($table = null)
	{
		$condition = array();
		$condition[] = 'parent_id = '. (int) $table->parent_id;
		//$condition[] = 'state >= 0';
		return $condition;
	}
	
	
	
	
	
	function approve(&$pks, $value = 1)
	{ 
		// Initialise variables.
		$dispatcher	= JDispatcher::getInstance();
		$user		= JFactory::getUser();
		$table		= $this->getTable('phocagalleryc');
		$pks		= (array) $pks;

		// Include the content plugins for the change of state event.
		JPluginHelper::importPlugin('content');

		// Access checks.
		foreach ($pks as $i => $pk) {
			if ($table->load($pk)) {
				if (!$this->canEditState($table)) {
					// Prune items that you can't change.
					unset($pks[$i]);
					JError::raiseWarning(403, JText::_('JLIB_APPLICATION_ERROR_EDIT_STATE_NOT_PERMITTED'));
				}
			}
		}

		// Attempt to change the state of the records.
		if (!$table->approve($pks, $value, $user->get('id'))) {
			$this->setError($table->getError());
			return false;
		}

		$context = $this->option.'.'.$this->name;

		// Trigger the onContentChangeState event.
		$result = $dispatcher->trigger($this->event_change_state, array($context, $pks, $value));
		if (in_array(false, $result, true)) {
			$this->setError($table->getError());
			return false;
		}

		return true;
	}
	/*
	protected function canEditState($record)
	{
		$user = JFactory::getUser();
		return $user->authorise('core.edit.state', $this->option);
	}
	*/
	
	
	
	
	
	/*
	 * Custom Save method - libraries/joomla/application/component/modeladmin.php
	 */
	public function save($data, &$extImgError = false)
	{
		
		// = = = = = = = = = = 
		// Default VALUES FOR Rights in FRONTEND
		// ACCESS -  0: all users can see the category (registered or not registered)
		//             if registered or not registered it will be set in ACCESS LEVEL not here)
		//			   if -1 - user was not selected so every registered or special users can see category
		// UPLOAD - -2: nobody can upload or add images in front (if 0 - every users can do it)
		// DELETE - -2: nobody can upload or add images in front (if 0 - every users can do it)
		if(!isset($data['accessuserid'])) { $data['accessuserid'] = array();}
		if(!isset($data['uploaduserid'])) { $data['uploaduserid'] = array();}
		if(!isset($data['deleteuserid'])) { $data['deleteuserid'] = array();}
		$accessUserIdArray	= PhocaGalleryUtils::toArray($data['accessuserid']);
		$uploadUserIdArray	= PhocaGalleryUtils::toArray($data['uploaduserid']);
		$deleteUserIdArray	= PhocaGalleryUtils::toArray($data['deleteuserid']);

		if (isset($data['access']) && (int)$data['access'] > 0 && (int)$accessUserIdArray[0] == 0) {		
			$accessUserId[0]	= -1;
		}
		$data['accessuserid'] = implode(',',$accessUserIdArray);
		$data['uploaduserid'] = implode(',',$uploadUserIdArray);
		$data['deleteuserid'] = implode(',',$deleteUserIdArray);
		
		//TODO - return message
		if(!isset($data['owner_id'])) { $data['owner_id'] = 0;}
		// Owner can have only one main category - check it 
		$errorMsgOwner		= '';
		$ownerMainCategory	= $this->getOwnerMainCategory($data['owner_id'], $data['id'], $data['parent_id'], $errorMsgOwner);
		
		if($errorMsgOwner != '') {
			$data['owner_id'] = 0;
			$this->setError($errorMsgOwner);
			return false;
		}
		// = = = = = = = = = = 
		
		
		// Initialise variables;
		$dispatcher = JDispatcher::getInstance();
		$table		= $this->getTable();
		$pk			= (!empty($data['id'])) ? $data['id'] : (int)$this->getState($this->getName().'.id');
		$isNew		= true;

		// Include the content plugins for the on save events.
		JPluginHelper::importPlugin('content');

		// Load the row if saving an existing record.
		if ($pk > 0) {
			$table->load($pk);
			$isNew = false;
		}

		// Bind the data.
		if (!$table->bind($data)) {
			$this->setError($table->getError());
			return false;
		}

		// Prepare the row for saving
		$this->prepareTable($table);

		// Check the data.
		if (!$table->check()) {
			$this->setError($table->getError());
			return false;
		}

		// Trigger the onContentBeforeSave event.
		/*$result = $dispatcher->trigger($this->event_before_save, array($this->option.'.'.$this->name, $table, $isNew));
		if (in_array(false, $result, true)) {
			$this->setError($table->getError());
			return false;
		}*/

		// Store the data.
		if (!$table->store()) {
			$this->setError($table->getError());
			return false;
		}

		// Clean the cache.
		$cache = JFactory::getCache($this->option);
		$cache->clean();

		// Trigger the onContentAfterSave event.
		$dispatcher->trigger($this->event_after_save, array($this->option.'.'.$this->name, $table, $isNew));

		$pkName = $table->getKeyName();
		if (isset($table->$pkName)) {
			$this->setState($this->getName().'.id', $table->$pkName);
		}
		$this->setState($this->getName().'.new', $isNew);

		$subTask = JRequest::getVar('subtask');
		
		// TODO
		if ((string)$subTask == 'loadextimgp') {
			if (isset($table->$pkName)) {
				$errorMsg = '';
				
				if(!$this->loadExtImages($table->$pkName, $data, $message)) {
					$this->setError($message, 'error');
					// Be aware the category is stored yet
					//return false;
					$extImgError = true;
					return true;//but with error message
				}
			}
		}
		if ((string)$subTask == 'loadextimgf') {
			if (isset($table->$pkName)) {
				$errorMsg = '';
				if(!$this->loadExtImagesFb($table->$pkName, $data, $message)) {
					$this->setError($message, 'error');
					// Be aware the category is stored yet
					//return false;
					$extImgError = true;
					return true;//but with error message
				}
			}
		}
		
		// Stored - set Owner
		if (isset($table->$pkName) && isset($data['owner_id']) && (int)$data['owner_id'] > 0) {
			
			if(!$this->setOwnerOfCategory($data)) {
				$this->setError($message);
				return false;
			}
		}
		
		return true;
	}
	
	
	
	
	protected function setOwnerOfCategory($data) {
		$dataUser['userid']		= (int)$data['owner_id'];
		//$data['catid']		= $id;
		$dataUser['avatar']		= '';
		$dataUser['published']	= 1;
		$dataUser['approved']	= 0;
		$dataOwnerCategory	= $this->getOwnerCategoryData($dataUser['userid']);
		if ($dataOwnerCategory) {
			// Owner is set in user table
			$userCategoryId 	= $this->storeOwnerCategory($dataOwnerCategory);
		} else {
			// Owner is not set in user table
			$userCategoryId 	= $this->storeOwnerCategory($dataUser);
		}
	
		if (!$userCategoryId) {
			$this->setError(JText::_( 'COM_PHOCAGALLERY_ERROR_SAVING_CATEGORY' ) . ' - ' . JText('COM_PHOCAGALLERY_OWNER'));
			return false;
		}
		return true;
						
	}
	
	/*
	 * Owner
	 * Store information about Owner (if administrator add a category to some Owner)
	 */
	protected function storeOwnerCategory($data) {
		
		
		$row =& $this->getTable('phocagalleryuser');
		
		// Bind the form fields to the table
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// if new item, order last in appropriate group
		if (!$row->id) {
			$row->ordering = $row->getNextOrder( );
		}
		
		// Make sure the table is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}

		// Store the table to the database
		if (!$row->store()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		return $row->id;
	}
	
	/*
	 * Owner
	 * Get information about author's category
	 */
	protected function getOwnerCategoryData($userId) {

		$query = 'SELECT uc.*'
			. ' FROM #__phocagallery_user AS uc'
			. ' WHERE uc.userid = '.(int)$userId;
		
		$this->_db->setQuery( $query );
		$userCategoryData = $this->_db->loadObject();
		if (isset($userCategoryData->id)) {
			return $userCategoryData;
		}
		return false;
	}
	
	public function uploadExtImagesFb($idCat, $data, &$errorMsg) {
	
		$idImg = 0;
		if (JRequest::getVar( 'fbimg', 0, 'get', 'int' ) > 0) {
			$data['extfbcatid']	= JRequest::getVar( 'fbalbum', '', 'get'  );
			$data['extfbuid']	= JRequest::getVar( 'fbuser', '', 'get'  );
			$data['language']	= JRequest::getVar( 'fblang', '', 'get'  );
			$idImg				= JRequest::getVar( 'fbimg', '', 'get'  );
			
		}
	
		$user = PhocaGalleryFbSystem::getFbUserInfo($data['extfbuid']);
		if (!empty($user)) {
			$session = PhocaGalleryFbSystem::setSessionData($user);
			$image = PhocaGalleryFbSystem::getImageFromCat($idCat, $idImg);
			if(isset($image['end']) && $image['end'] == 1) {
				$errorMsg = JText::_('COM_PHOCAGALLERY_FB_END_EXPORT');
				return true;
			}
			if(!empty($image)) {
			
				// Don't export external image
				if(isset($image['extid']) && $image['extid'] != '') {
					$exportMsg = '<b style="color:#fc0000">'.JText::_( 'COM_PHOCAGALLERY_NOT_EXPORTED' ).'</b> ('.JText::_('COM_PHOCAGALLERY_ERROR_EXT_IMG_NOT_EXPORTED').')';
				} else {
					$export = PhocaGalleryFb::exportFbImage ($user->appid, $user->appsid, $session, $image, $data['extfbcatid']);
					
					if(isset($export['pid']) && $export['pid'] != '') {
						$exportMsg = '<b style="color:#009900">'.JText::_( 'COM_PHOCAGALLERY_EXPORTED' ).'</b>';
					} else {
						$exportMsg = '<b style="color:#fc0000">'.JText::_( 'COM_PHOCAGALLERY_NOT_EXPORTED' ).'</b> ('.JText::_('COM_PHOCAGALLERY_ERROR_FB_EXPORTING').')';
					}
				}		
					
				$refreshUrl	= 'index.php?option=com_phocagallery&task=phocagalleryc.uploadextimgfpgn&id='.$idCat.'&fbalbum='.$data['extfbcatid'].'&fbuser='.$data['extfbuid'].'&fblang='.$data['language'].'&fbimg='.(int)$image['id'] .'&amp;'. JUtility::getToken().'=1';
				
				$imageFileName = '';				
				if(isset($image['filename']) && $image['filename'] != '') {
					$imageFileName = ' ('.$image['filename'].')';
				}
				$countInfo 	= '<div><span style="color:#0066cc;">'. $image['title'] .$imageFileName . '</span>'
				. ' '.$exportMsg.'<br />'
				. '<span>' . JText::_('COM_PHOCAGALLERY_EXPORT_NEXT_IMG_EXPORT') . ' ...</span></div>';
							
				PhocaGalleryFbSystem::renderProcessPage($idCat, $refreshUrl, $countInfo);
				exit;
			} else {
				$errorMsg = JText::_('COM_PHOCAGALLERY_ERROR_LOADING_DATA_DB'). ': (Facebook Images From Category)';
				return false;
			}
				
		} else {
			$errorMsg = JText::_('COM_PHOCAGALLERY_ERROR_LOADING_DATA_DB'). ': (Facebook User Info)';
			return false;
		}
	}
	
	public function loadExtImagesFb($idCat, $data, &$errorMsg) {
	
		$paramsC 	= JComponentHelper::getParams('com_phocagallery');
		
		$lw 		= $paramsC->get( 'large_image_width', 640 );
		$mw 		= $paramsC->get( 'medium_image_width', 100 );
		$sw 		= $paramsC->get( 'small_image_width', 50 );
	
		$dataImg = array();
		if (isset($data['extfbuid']) && $data['extfbuid'] > 0 && isset($data['extfbcatid']) && $data['extfbcatid'] != '' ) {
		
			$user = PhocaGalleryFbSystem::getFbUserInfo($data['extfbuid']);
			
			if (!empty($user)) {
				$session = PhocaGalleryFbSystem::setSessionData($user);
				$images	= PhocaGalleryFb::getFbImages($user->appid, $user->appsid, $session,  $data['extfbcatid']);
				
				if(!empty($images)) {
					$i = 0;
					foreach ($images as $key => $value) {
				
						$dataImg[$i]['extid']			= $value['pid'];
						$dataImg[$i]['title']			= PhocaGalleryText::wordDeleteWhole($value['caption'], 30, '');
						$dataImg[$i]['description']		= $value['caption'];
						$dataImg[$i]['extl']			= $value['src_big'];
						$dataImg[$i]['exto']			= $value['src_big'];
						$dataImg[$i]['exts']			= $value['src_small'];
						$dataImg[$i]['extm']			= $value['src'];
						$dataImg[$i]['date']			= date("Y-m-d H:i:s", $value['created']);
						
						// Large
						$dataImg[$i]['extw'][0]				= $value['src_big_width'];
						$dataImg[$i]['exth'][0]				= $value['src_big_height'];
						//Medium
						$dataImg[$i]['extw'][1]				= $value['src_width'];
						$dataImg[$i]['exth'][1]				= $value['src_height'];
						// Small
						$dataImg[$i]['extw'][2]				= $value['src_small_width'];
						$dataImg[$i]['exth'][2]				= $value['src_small_height'];
						
						
						// Try to find original and a or s(sometimes facebook returns it, sometimes not) :-(
						// Should the medium be larger
						$c = 1; //(1 ... original, +1 = 2 ... medium, +1 = 3 ... small)
						$m = false;
						if((int)$mw > (int)$dataImg[$i]['extw'][1]) {
							$m = true;//check for larger size of medium image
							$c++;// count;
						}
						$s = false;
						if((int)$sw > (int)$dataImg[$i]['extw'][2]) {
							$s = true;//check for larger size of medium image
							$c++;// count;
						}
						
						
						if(isset($value['images'])) {
							$f = 0;
							foreach ($value['images'] as $key2 => $value2) {
								
								// Original
								if(strpos($value2['source'], '_o.') === false) {
								} else {
									$dataImg[$i]['exto'] 	= $value2['source'];
									$f++;
								}
								
								
								// Change from _s to _a
								if ($m) {
									if(strpos($value2['source'], '_a.') === false) {
									} else {
										$dataImg[$i]['extm'] 	= $value2['source'];
										//Medium
										$dataImg[$i]['extw'][1]	= $value2['width'];
										$dataImg[$i]['exth'][1]	= $value2['height'];
										$f++;
									}
								}
								
								// Change from _t to _s
								if ($s) {
									if(strpos($value2['source'], '_s.') === false) {
									} else {
										$dataImg[$i]['exts'] 	= $value2['source'];
										//Small
										$dataImg[$i]['extw'][2]	= $value2['width'];
										$dataImg[$i]['exth'][2]	= $value2['height'];
										$f++;
									}
								}
								if ($f==$c){break;}//break this foreach (we found all checked images, don't look it again)

							}
						}
						// - - - - - :-(
				
						$dataImg[$i]['extw']	= implode( ',', $dataImg[$i]['extw']);
						$dataImg[$i]['exth']	= implode( ',', $dataImg[$i]['exth']);
						$dataImg[$i]['exttype']	= 1;
				
				
						$dataImg[$i]['published']	= 1;
						$dataImg[$i]['approved']	= 1;
						$dataImg[$i]['catid']		= (int)$idCat;
						$dataImg[$i]['language']	= $data['language'];
						$i++;
					}
				}
				
			} else {
				$errorMsg = JText::_('COM_PHOCAGALLERY_ERROR_LOADING_DATA_DB'). ': (Facebook User Info)';
				return false;
			}
		} else {
			$errorMsg = JText::_('COM_PHOCAGALLERY_ERROR_LOADING_DATA_DB') . ' ' .JText::_('COM_PHOCAGALLERY_ERROR_CHECK_FB_FORM_FIELDS');
			return false;
		}
		
		if(count($dataImg) > 0) {
		
			if($this->storeImage($dataImg, (int)$idCat, 'facebook')) {
				return true;
			} else {
				$errorMsg = JText::_('COM_PHOCAGALLERY_FACEBOOK_IMAGE_SAVE_ERROR');
				return false;
			}
		} else {
			$errorMsg = JText::_('COM_PHOCAGALLERY_FACEBOOK_NOT_LOADED_IMAGE');
			return false;
		}
	}
	
	public function loadExtImages($idCat, $data, &$message) {
	
		$paramsC = JComponentHelper::getParams('com_phocagallery');
		$picasa_load_pagination = $paramsC->get( 'picasa_load_pagination', 20 );
		
		// First get Album ID from PICASA
		// Second - Get id (from saved category) OR from GET (if pagination is used)
		// Third save images with ID of category
				
		$errorMsgA = $errorMsgI = '';
		
		//FIRST
		if (JRequest::getVar( 'picstart', 0, 'get', 'int' ) > 0) {
			// Category is saved - use this id and don't save it again
			$data['exta']		= JRequest::getVar( 'picalbum', '', 'get'  );
			$data['extu']		= JRequest::getVar( 'picuser', '', 'get'  );
			$data['extauth']	= JRequest::getVar( 'picauth', '', 'get'  );
			$data['language']	= JRequest::getVar( 'piclang', '', 'get'  );
		}
				
		$album = $this->picasaAlbum($data['extu'], $data['extauth'], $data['exta'], $errorMsgA);
				
		if (!$album) {
			$message = PhocaGalleryUtils::setMessage($errorMsgA, $message);
			return false;
		} else {
			$data['extid'] = $album['id'];
		}
		
				
		// SECOND	
		if (JRequest::getVar( 'picstart', 0, 'get', 'int' ) > 0) {
			// Category is saved - use this id and don't save it again
			$id	= JRequest::getVar( 'id', 0, 'get', 'int' );
		} else {
			$id	= 	$idCat;//you get id and you store the table data
		}
				
		if ($id && $id > 0) {

			// THIRD
			if ($album && (int)$album['id'] > 0) {
			
				// PAGINATION
				$start	= JRequest::getVar( 'picstart', 1, 'get', 'int' );
				$max	= $picasa_load_pagination;
				$pagination	= '&start-index='.(int)$start.'&max-results='.(int)$max;
				$picImg = $this->picasaImages($data['extu'],$data['extauth'], $album['id'], $id, $data['language'], $pagination, $errorMsgI);
				
				if (!$picImg) {
					$message = PhocaGalleryUtils::setMessage($errorMsgI, $message);
					return false;
				} else {
				
					if (isset($album['num']) && (int)$album['num'] > 0) {
						$newStart 	= (int)$start + (int)$max;
						$newStartIf	= (int)$newStart - 1;
						
						// Sec - - - - 
						$loop		= (int)$album['num'] / (int)$max;
						$maxCount	= (int)$max;
						// - - - - - - 
						if ((int)$loop > 50 || $maxCount < 20) {
							$message = PhocaGalleryUtils::setMessage(JText::_( 'COM_PHOCAGALLERY_PICASA_IMAGE_NOT_ALL_LOADED' ), $message);
							return false;
						} else {
							if ((int)$album['num'] > (int)$newStartIf) {
								
								$refreshUrl	= 'index.php?option=com_phocagallery&task=phocagalleryc.loadextimgpgn&id='.$id.'&picalbum='.$data['exta'].'&picuser='.$data['extu'].'&picauth='.$data['extauth'].'&piclang='.$data['language'].'&picstart='.(int)$newStart .'&amp;'. JUtility::getToken().'=1';
								$countImg	= $newStartIf + $max;
								if ($countImg > $album['num']) {
									$countImg = $album['num'];
								}
								//$countInfo 	= '<div><b>'.$newStart. '</b> - <b>'. $countImg . '</b> ' .JText::_('COM_PHOCAGALLERY_FROM'). ' <b>' . $album['num'].'</b></div>';
								$countInfo = '<div>'. JText::sprintf('COM_PHOCAGALLERY_FROM_ALBUM' ,'<b>'.$newStart. '</b>', '<b>'. $countImg . '</b> ', ' <b>' . $album['num'].'</b>') .'</div>';
								
								PhocaGalleryPicasa::renderProcessPage($id, $refreshUrl, $countInfo);
								exit;
							}
						}
					}
					
					// The extid is not a part of post data, so we must store it after
					$query	= $this->_db->getQuery(true);
					$query->update('`#__phocagallery_categories`');
					$query->set('`extid` = '.$this->_db->quote($album['id']));
					$query->where('`id` = '.(int)$id);
					$this->_db->setQuery( (string)$query );
				
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					
					$message = PhocaGalleryUtils::setMessage(JText::_( 'COM_PHOCAGALLERY_PICASA_IMAGE_LOADED' ), $message);
					return true;
				}
			}
	
		} else {
			$message = PhocaGalleryUtils::setMessage(JText::_( 'COM_PHOCAGALLERY_ERROR_SAVING_CATEGORY' ), $message);
			return true;
		}
	}
	
	
	
	/*
	 * AUTHOR - OWNER
	 * Get information about owner's category
	 */
	public function getOwnerMainCategory($userId, $categoryId, $parentId, &$errorMsgOwner) {
		
		$db =& JFactory::getDBO();
		
		// It is new subcategory, check if parent category has the same owner
		// If not don't assing the owner
		if ($parentId > 0) {
		
			$query = 'SELECT cc.id, cc.owner_id'
			. ' FROM #__phocagallery_categories AS cc'
			. ' WHERE cc.id = '.(int)$parentId;
			$db->setQuery( $query );
			$parentCatOwnerId = $db->loadObject();
			
			if (isset($parentCatOwnerId->owner_id) ) {
				if (($userId < 1) || $userId == $parentCatOwnerId->owner_id) {
					return true;
				} else {
					$errorMsgOwner .= '<br />'. JText::_('COM_PHOCAGALLERY_PARENT_CATEGORY_NOT_ASSIGNED_TO_SAME_USER');
					return false;
				}
			}
		} else {
		
			// It is not subcategory
			// If there is owner for other root category, don't assign it
			$query = 'SELECT cc.id, cc.title'
				. ' FROM #__phocagallery_categories AS cc'
				. ' WHERE cc.owner_id = '.(int)$userId
				. ' AND cc.id <> '.(int)$categoryId // Check other categories
				. ' AND cc.owner_id > 0' // Ignore -1
				. ' AND cc.parent_id = 0';// TODO
			
			$db->setQuery( $query );
			$ownerMainCategoryId = $db->loadObject();
			if (isset($ownerMainCategoryId->title)) {
				$errorMsgOwner .= '<br />'. JText::_('COM_PHOCAGALLERY_SELECTED_USER_CAN_BE_ASSIGNED_TO_ONE_MAIN_CATEGORY_ONLY')
								.'<br />'. JText::_('COM_PHOCAGALLERY_USER_ASSIGNED_TO_CATEGORY') . ': ' . $ownerMainCategoryId->title;
				return false;
			}
		}

		return true;
	}
	/*
	function accessmenu($id, $access) {
		$app	= JFactory::getApplication();
		$row =& $this->getTable();
		if (!$row->load($id)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		$row->id = $id;
		$row->access = $access;

		if ( !$row->check() ) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		if ( !$row->store() ) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
	}*/

	function delete($cid = array()) {
		$app	= JFactory::getApplication();
		$db 	= JFactory::getDBO();
		
		$result = false;
		if (count( $cid )) {
			JArrayHelper::toInteger($cid);
			$cids = implode( ',', $cid );
			
			// FIRST - if there are subcategories - - - - - 	
			$query = 'SELECT c.id, c.name, c.title, COUNT( s.parent_id ) AS numcat'
			. ' FROM #__phocagallery_categories AS c'
			. ' LEFT JOIN #__phocagallery_categories AS s ON s.parent_id = c.id'
			. ' WHERE c.id IN ( '.$cids.' )'
			. ' GROUP BY c.id'
			;
			$db->setQuery( $query );
				
			if (!($rows2 = $db->loadObjectList())) {
				JError::raiseError( 500, $db->stderr('Load Data Problem') );
				return false;
			}

			// Add new CID without categories which have subcategories (we don't delete categories with subcat)
			$err_cat = array();
			$cid 	 = array();
			foreach ($rows2 as $row) {
				if ($row->numcat == 0) {
					$cid[] = (int) $row->id;
				} else {
					$err_cat[] = $row->title;
				}
			}
			// - - - - - - - - - - - - - - -
			
			// Images with new cid - - - - -
			if (count( $cid )) {
				JArrayHelper::toInteger($cid);
				$cids = implode( ',', $cid );
			
				// Select id's from phocagallery tables. If the category has some images, don't delete it
				$query = 'SELECT c.id, c.name, c.title, COUNT( s.catid ) AS numcat'
				. ' FROM #__phocagallery_categories AS c'
				. ' LEFT JOIN #__phocagallery AS s ON s.catid = c.id'
				. ' WHERE c.id IN ( '.$cids.' )'
				. ' GROUP BY c.id';
			
				$db->setQuery( $query );

				if (!($rows = $db->loadObjectList())) {
					JError::raiseError( 500, $db->stderr('Load Data Problem') );
					return false;
				}
				
				$err_img = array();
				$cid 	 = array();
				foreach ($rows as $row) {
					if ($row->numcat == 0) {
						$cid[] = (int) $row->id;
					} else {
						$err_img[] = $row->title;
					}
				}
				
				if (count( $cid )) {
					$cids = implode( ',', $cid );
					$query = 'DELETE FROM #__phocagallery_categories'
					. ' WHERE id IN ( '.$cids.' )';
					$db->setQuery( $query );
					if (!$db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					
					// Delete items in phocagallery_user_category
				/*	$query = 'DELETE FROM #__phocagallery_user_category'
					. ' WHERE catid IN ( '.$cids.' )';
					$db->setQuery( $query );
					if (!$db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}*/
				}
			}
			
			// There are some images in the category - don't delete it
			$msg = '';
			if (count( $err_cat ) || count( $err_img )) {
				if (count( $err_cat )) {
					$cids_cat = implode( ", ", $err_cat );
					$msg .= JText::plural( 'COM_PHOCAGALLERY_ERROR_DELETE_CONTAIN_CAT', $cids_cat );
				}
				
				if (count( $err_img )) {
					$cids_img = implode( ", ", $err_img );
					$msg .= JText::plural( 'COM_PHOCAGALLERY_ERROR_DELETE_CONTAIN_IMG', $cids_img );
				}
				$link = 'index.php?option=com_phocagallery&view=phocagallerycs';
				$app->redirect($link, $msg);
			}
		}
		return true;
	}

	
	function cooliris($cids, &$message) {
		$db 		= JFactory::getDBO();
		$path 		= PhocaGalleryPath::getPath();
		$piclensImg = $path->image_rel_front.'icon-phocagallery.png';
		$paramsC	= JComponentHelper::getParams('com_phocagallery') ;
		jimport('joomla.filesystem.file');
		
		// PARAMS
		// original 0, thumbnail 1
		$cooliris_image 	= $paramsC->get( 'piclens_image', 1);
		
		if (JFolder::exists($path->image_abs)) {  
			
			foreach ($cids as $kcid =>$vcid) {
				$xml = '<?xml version="1.0" encoding="utf-8" standalone="yes"?>'. "\n";
				$xml .= '<rss xmlns:media="http://search.yahoo.com/mrss" xmlns:atom="http://www.w3.org/2005/Atom" version="2.0">'. "\n";
				
				$xml .= ' <channel>'. "\n";
				$xml .= '  <atom:icon>'.JURI::root() . $piclensImg. '</atom:icon>'. "\n\n";

				$xml .= '  <title>Phoca Gallery</title>'. "\n";
				$xml .= '  <link>http://www.phoca.cz/</link>'. "\n";
				$xml .= '  <description>Phoca Gallery</description>'. "\n";
				
				$query = 'SELECT a.id, a.title, a.filename, a.description, a.extid, a.extl, a.exto'
				. ' FROM #__phocagallery AS a'
				. ' WHERE a.catid = '.(int)$vcid
				. ' AND a.published = 1'
				. ' ORDER BY a.catid, a.ordering';
				
				$db->setQuery($query);
				$rows = $db->loadObjectList();
				
				foreach ($rows as $krow => $vrow) {
					$file 		= PhocaGalleryFileThumbnail::getOrCreateThumbnail($vrow->filename, '');	
					$thumbFile	= str_replace( "administrator", "",  $file['thumb_name_l_no_rel']);
					$origFile	= str_replace( "administrator", "",  $file['name_original_rel']);					

					$xml .= '   <item>'. "\n";
					$xml .= '    <title>' . $vrow->title . '</title>'. "\n";
					
					if ($vrow->extid != '') {
						$xml .= '<link>' .$vrow->extl . '</link>'. "\n";
					} else {
						$xml .= '    <link>' .JURI::root().$thumbFile . '</link>'. "\n";
					}
					
					$xml .= '    <description>' . JFilterOutput::cleanText(strip_tags($vrow->description )) . '</description>'. "\n";
					
					if ($vrow->extid != '') {
						$xml .= '    <media:thumbnail url="' .$vrow->extl .'" />'. "\n";
						if ($cooliris_image == 1) {
							$xml .= '    <media:content url="' .$vrow->extl .'" />'. "\n";
						} else {
							$xml .= '    <media:content url="' .$vrow->exto .'" />'. "\n";
						}
					} else {
						$xml .= '    <media:thumbnail url="' .JURI::root().$thumbFile .'" />'. "\n";
						if ($cooliris_image == 1) {
							$xml .= '    <media:content url="' .JURI::root().$thumbFile .'" />'. "\n";
						} else {
							$xml .= '    <media:content url="' .JURI::root().$origFile .'" />'. "\n";
						}
					}

					if ($vrow->extid != '') {
						$xml .= '    <guid isPermaLink="false">' . $vcid .'-phocagallerypiclenscode-'.$vrow->extid . '</guid>'. "\n";
					} else {
						$xml .= '    <guid isPermaLink="false">' . $vcid .'-phocagallerypiclenscode-'.$vrow->filename  . '</guid>'. "\n";
					}
					$xml .= '   </item>'. "\n\n";
				}
				
				$xml .= ' </channel>'. "\n";
				$xml .= '</rss>'. "\n";
				
				

				ob_start();
				echo $xml;
				$xmlToWrite = ob_get_contents();
				ob_end_clean();
				if(!JFile::write( $path->image_abs . DS . $vcid.'.rss', $xmlToWrite)) {
					$message = 'COM_PHOCAGALLERY_ERROR_SAVING_RSS';
					return false;
				}
			}
			return true;
		} else {
			$message = 'COM_PHOCAGALLERY_ERROR_IMAGE_FOLDER_NOT_EXIST';
			return false;
		}
	}
	
	protected function picasaAlbum($user, $authkey, $album, &$errorMsg) {
		
		$paramsC = JComponentHelper::getParams('com_phocagallery');
		$enable_picasa_loading = $paramsC->get( 'enable_picasa_loading', 1 );	
		if($enable_picasa_loading == 0){
			$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_ENABLED');
			return false;
		}
		

		
		if(!function_exists("json_decode")){
			$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_JSON');
			return false;
		}
	
		// PUBLIC OR UNLISTED ALBUM
		if ($authkey == ''){
			// PUBLIC ALBUM
			$userAddress 	= 'http://picasaweb.google.com/data/feed/api/user/'.htmlentities($user).'?kind=album&access=public&alt=json';
			$dataUser 		= PhocaGalleryPicasa::loadDataByAddress($userAddress, 'user', $errorMsg);
			
			if($dataUser == '') {
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_USER');
				return false;
			}
			
			$dataUser 		= json_decode($dataUser);
			$albumInfo 		= false;
			$OgphotoId 		= 'gphoto$id';
			$OgphotoName 	= 'gphoto$name';
			$OgphotoNum 	= 'gphoto$numphotos';
			$Ot				= '$t';
			
			if (isset($dataUser->feed->entry) && count($dataUser->feed->entry) > 0) {
				foreach ($dataUser->feed->entry as $key => $value) {
					
					if ($album == $value->{$OgphotoName}->{$Ot}) {
						$albumInfo['id'] 	= $value->{$OgphotoId}->{$Ot};
						$albumInfo['num'] 	= $value->{$OgphotoNum}->{$Ot};
						return $albumInfo;
					}
				}
				// Album not found
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_ALBUM');
				return false;
			} else {
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_USER');
				return false;
			}
		} else {
			// UNLISTED ALBUM
			$userAddress 	= 'http://picasaweb.google.com/data/feed/api/user/'.htmlentities($user).'/album/'.htmlentities($album).'?authkey='.htmlentities($authkey).'&alt=json';
			$dataUser		= PhocaGalleryPicasa::loadDataByAddress($userAddress, 'user', $errorMsg);
			if($dataUser == '') {
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_ALBUM');
				return false;
			}
			
			$dataUser 		= json_decode($dataUser);
			$albumInfo 		= false;
			$OgphotoId 		= 'gphoto$id';
			$OgphotoName 	= 'gphoto$name';
			$OgphotoNum 	= 'gphoto$numphotos';
			$Ot				= '$t';
		
			if (isset($dataUser->feed->entry) && count($dataUser->feed->entry) > 0) {
			
				if ($album == $dataUser->feed->{$OgphotoName}->{$Ot}) {
					$albumInfo['id'] 	=$dataUser->feed->{$OgphotoId}->{$Ot};
					$albumInfo['num'] 	= $dataUser->feed->{$OgphotoNum}->{$Ot};
					return $albumInfo;
				}
				
				// Album not found
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_ALBUM');
				return false;
			} else {
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_USER');
				return false;
			}
		}

	}
	

	
	function picasaImages($user, $authkey, $albumId, $catid, $language, $pagination, &$errorMsg) {
	
		// Large image - is taken as original
		// Medium - can be taken as original (if Picasat thumbs are too small or as thumbnail)
		// Small - is taken as thumbnail
		
		// In getSize we decide if the mediumT will be 0 or 1
		// mediumT = 1 - thumbnail, mediumT = 0 - original
		$mediumT = 0;
		phocagalleryimport('phocagallery.picasa.picasa');
		$size = PhocaGalleryPicasa::getSize($mediumT);
		
		$Ot				= '$t';
		$OgeorssWhere	= 'georss$where';
		$OgmlPoint 		= 'gml$Point';
		$OgmlPos 		= 'gml$pos';
		$OmediaGroup	= 'media$group';
		$OmediaContent	= 'media$content';
		$OmediaThumbnail= 'media$thumbnail';
		$OgphotoId 		= 'gphoto$id';
		$OgphotoName 	= 'gphoto$name';
		$Ot				= '$t';
		
		// LARGE AND SMALL( AND MEDIUM) - will be the same everywhere so we take them in one
		if ($authkey == ''){
			$albumAddressLSM	= 'http://picasaweb.google.com/data/feed/api/user/'.htmlentities($user).'/albumid/'.$albumId.'?alt=json&kind=photo'.$size['lsm'].$pagination;
		} else {
			$albumAddressLSM	= 'http://picasaweb.google.com/data/feed/api/user/'.htmlentities($user).'/albumid/'.$albumId.'?alt=json&kind=photo'.$size['lsm'].$pagination.'&authkey='.htmlentities($authkey);
		}
		$dataAlbumLSM 		= PhocaGalleryPicasa::loadDataByAddress($albumAddressLSM, 'album', $errorMsg);
	
		if(!$dataAlbumLSM) {
			
			return false;
		}
		$dataAlbumLSM 	= json_decode($dataAlbumLSM);
		
		$dataImg = array();
		
	
		// LARGE AND SMALL (AND MEDIUM)
		if (isset($dataAlbumLSM->feed->entry) && count($dataAlbumLSM->feed->entry) > 0) {
			$i = 0;
			foreach ($dataAlbumLSM->feed->entry as $key => $value) {
				
				//$row->date = gmdate('Y-m-d H:i:s');
				$dataImg[$i]['extid']			= $value->{$OgphotoId}->{$Ot};
				$dataImg[$i]['title']			= $value->title->{$Ot};
				$dataImg[$i]['description']		= $value->summary->{$Ot};
				$dataImg[$i]['extl']			= $value->content->src;
				$dataImg[$i]['exto']			= str_replace('/s'.$size['ls'].'/', '/', $value->content->src);
				$dataImg[$i]['exts']			= $value->{$OmediaGroup}->{$OmediaThumbnail}[0]->url;
				if ($mediumT == 1) {
					$dataImg[$i]['extm']		= $value->{$OmediaGroup}->{$OmediaThumbnail}[1]->url;
				}
				$dataImg[$i]['date']			= substr(str_replace('T', ' ',$value->updated->{$Ot}), 0, 19);
				$dataImg[$i]['language']		= $language;
				/*if (isset($value->{$OgeorssWhere}->{$OgmlPoint}->{$OgmlPos}->{$Ot})) {
					$dataImg[$i]['latitude']	= substr($value->{$OgeorssWhere}->{$OgmlPoint}->{$OgmlPos}->{$Ot}, 0, 10);
					$dataImg[$i]['longitude']	= substr($value->{$OgeorssWhere}->{$OgmlPoint}->{$OgmlPos}->{$Ot}, 11, 10);
					$dataImg[$i]['zoom']		= 10;
					//$data['geotitle']	= $data['title'];
				}*/
				
				if (isset($value->{$OgeorssWhere}->{$OgmlPoint}->{$OgmlPos}->{$Ot})) {
					//$dataImg[$i]['latitude']    = substr($value->{$OgeorssWhere}->{$OgmlPoint}->{$OgmlPos}->{$Ot}, 0, 10);
					//$dataImg[$i]['longitude']    = substr($value->{$OgeorssWhere}->{$OgmlPoint}->{$OgmlPos}->{$Ot}, 11, 10);
					$geoArray = explode (' ', $value->{$OgeorssWhere}->{$OgmlPoint}->{$OgmlPos}->{$Ot});
					if (isset($geoArray[0])) {
						$dataImg[$i]['latitude'] = $geoArray[0];
					}
					if (isset($geoArray[1])) {
						$dataImg[$i]['longitude'] = $geoArray[1];
					}
					$dataImg[$i]['zoom']        = 10;
					//$data['geotitle']    = $data['title'];
				} 
				
				
				// Large
				$dataImg[$i]['extw'][0]				= $value->{$OmediaGroup}->{$OmediaContent}[0]->width;
				$dataImg[$i]['exth'][0]				= $value->{$OmediaGroup}->{$OmediaContent}[0]->height;
				
				if ($mediumT == 1) {
					// Medium
					$dataImg[$i]['extw'][1]				= $value->{$OmediaGroup}->{$OmediaThumbnail}[1]->width;
					$dataImg[$i]['exth'][1]				= $value->{$OmediaGroup}->{$OmediaThumbnail}[1]->height;
				}
				// Small
				$dataImg[$i]['extw'][2]				= $value->{$OmediaGroup}->{$OmediaThumbnail}[0]->width;
				$dataImg[$i]['exth'][2]				= $value->{$OmediaGroup}->{$OmediaThumbnail}[0]->height;
				
				// Complete the width and height here as all data large, small, medium are available
				// ksort is not needed here if $mediumT == 1 (medium is taken as thumbnail)
				if ($mediumT == 1) {
					$dataImg[$i]['extw']	= implode( ',', $dataImg[$i]['extw']);
					$dataImg[$i]['exth']	= implode( ',', $dataImg[$i]['exth']);
				}
				$dataImg[$i]['exttype']		= 0;
				$dataImg[$i]['published']	= 1;
				$dataImg[$i]['approved']	= 1;
				
				
				$dataImg[$i]['catid']		= $catid;
				$i++;
			}
		}

		// Only in case the medium image cannot be taken from Picasa thumbnails
		// MEDIUM
		if ($mediumT == 0) {
			if ($authkey == ''){
				$albumAddressM	= 'http://picasaweb.google.com/data/feed/api/user/'.htmlentities($user).'/albumid/'.$albumId.'?alt=json&kind=photo'.$size['m'].$pagination;
			} else {
				$albumAddressM	= 'http://picasaweb.google.com/data/feed/api/user/'.htmlentities($user).'/albumid/'.$albumId.'?alt=json&kind=photo'.$size['m'].$pagination.'&authkey='.htmlentities($authkey);
			}
			$dataAlbumM 		= PhocaGalleryPicasa::loadDataByAddress($albumAddressM, 'album', $errorMsg);
			if($dataAlbumM == '') {
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_IMAGE');
				return false;
			}
			$dataAlbumM 	= json_decode($dataAlbumM);
			if (isset($dataAlbumM->feed->entry) && count($dataAlbumM->feed->entry) > 0) {
				$i = 0;
				foreach ($dataAlbumM->feed->entry as $key => $value) {

					
					$dataImg[$i]['extm']				= $value->content->src;
					// Medium
					$dataImg[$i]['extw'][1]				= $value->{$OmediaGroup}->{$OmediaContent}[0]->width;
					$dataImg[$i]['exth'][1]				= $value->{$OmediaGroup}->{$OmediaContent}[0]->height;
					
					// Complete the width and height here as NOT all data large, small, medium are available
					// ksort is needed here if $mediumT == 0 (medium is NOT taken as thumbnail)
					ksort($dataImg[$i]['extw']);
					ksort($dataImg[$i]['exth']);
					$dataImg[$i]['extw']	= implode( ',', $dataImg[$i]['extw']);
					$dataImg[$i]['exth']	= implode( ',', $dataImg[$i]['exth']);
					
					$i++;
				}
			}
		}
	
		if(count($dataImg) > 0) {
		
			if($this->storeImage($dataImg, $catid)) {
				return true;
			} else {
				$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_IMAGE_SAVE_ERROR');
				return false;
			}
		} else {
			return false;
			$errorMsg = JText::_('COM_PHOCAGALLERY_PICASA_NOT_LOADED_IMAGE');
		}
	}
	
	protected function storeImage($dataImg = array(), $catid, $type = 'picasa') {
	
		if (count( $dataImg )) {
			
			// Before it remove all images so they can be updated
			// But not if pagination is used - pagination in progress
			if (!isset($_GET['picstart']) || $type == 'facebook') {
				
				if ($type == 'facebook') {
					$exttype = 1;
				} else {
					$exttype = 0;//Picasa
				}
				$query = "DELETE FROM #__phocagallery"
				. " WHERE catid = ".(int)$catid
				. " AND extid IS NOT NULL"
				. " AND exttype =".(int)$exttype;
				$this->_db->setQuery( $query );
			}
			
		
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
			
			$i = 0;
			
			foreach($dataImg as $data) {
				
				if (!isset($data['title']) || (isset($data['title']) && $data['title'] == '')) {
					$data['title'] = 'External Image '.$i;
				}
				
				if (!isset($data['alias']) || (isset($data['alias']) && $data['alias'] == '')) {
					$data['alias'] = $data['title'];
				}
				$data['alias'] 	= PhocaGalleryText::getAliasName($data['alias']);
				
				$data['catid']	= (int)$catid;
				
				$row =& $this->getTable('phocagallery');
				
				/*
				if(isset($data['id']) && $data['id'] > 0) {
					if (!$row->load($data['id'])) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}*/

				// Bind the form fields to the Phoca gallery table
				if (!$row->bind($data)) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}

				// Create the timestamp for the date
				if (!$row->date) {
					$row->date = gmdate('Y-m-d H:i:s');
				}

				// if new item, order last in appropriate group
				if (!$row->id) {
					$where = 'catid = ' . (int) $row->catid ;
					$row->ordering = $row->getNextOrder( $where );
				}

				// Make sure the Phoca gallery table is valid
				if (!$row->check()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}

				// Store the Phoca gallery table to the database
				if (!$row->store()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				$i++;
			}
			return true;
		} else {
			return false;
		}
	}
	
	protected function batchCopy($value, $pks)
	{
		$categoryId	= (int) $value;
		

		$table	= $this->getTable();
		$db		= $this->getDbo();

		// Check that the category exists
		if ($categoryId) {
			$categoryTable = JTable::getInstance('PhocaGalleryC', 'Table');
			
			if (!$categoryTable->load($categoryId)) {
				if ($error = $categoryTable->getError()) {
					// Fatal error
					$this->setError($error);
					return false;
				}
				else {
					$this->setError(JText::_('JLIB_APPLICATION_ERROR_BATCH_MOVE_CATEGORY_NOT_FOUND'));
					return false;
				}
			}
		}

		//if (empty($categoryId)) {
		if (!isset($categoryId)) {
			$this->setError(JText::_('JLIB_APPLICATION_ERROR_BATCH_MOVE_CATEGORY_NOT_FOUND'));
			return false;
		}

		// Check that the user has create permission for the component
		$extension	= JRequest::getCmd('option');
		$user		= JFactory::getUser();
		if (!$user->authorise('core.create', $extension)) {
			$this->setError(JText::_('JLIB_APPLICATION_ERROR_BATCH_CANNOT_CREATE'));
			return false;
		}

		// Parent exists so we let's proceed
		while (!empty($pks))
		{
			// Pop the first ID off the stack
			$pk = array_shift($pks);

			$table->reset();

			// Check that the row actually exists
			if (!$table->load($pk)) {
				if ($error = $table->getError()) {
					// Fatal error
					$this->setError($error);
					return false;
				}
				else {
					// Not fatal error
					$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_BATCH_MOVE_ROW_NOT_FOUND', $pk));
					continue;
				}
			}

			// Alter the title & alias
			$data = $this->generateNewTitle($categoryId, $table->alias, $table->title);
			$table->title   = $data['0'];
			$table->alias   = $data['1'];

			// Reset the ID because we are making a copy
			$table->id		= 0;

			// New category ID
			$table->parent_id	= $categoryId;
			
			// Ordering
			$table->ordering = $this->increaseOrdering($categoryId);

			$table->hits = 0;

			// Check the row.
			if (!$table->check()) {
				$this->setError($table->getError());
				return false;
			}

			// Store the row.
			if (!$table->store()) {
				$this->setError($table->getError());
				return false;
			}
		}

		// Clean the cache
		$this->cleanCache();

		return true;
	}

	protected function batchMove($value, $pks)
	{
		$categoryId	= (int) $value;

		$table	= $this->getTable();
		//$db		= $this->getDbo();

		// Check that the category exists
		if ($categoryId) {
			$categoryTable = JTable::getInstance('PhocaGalleryC', 'Table');
			if (!$categoryTable->load($categoryId)) {
				if ($error = $categoryTable->getError()) {
					// Fatal error
					$this->setError($error);
					return false;
				}
				else {
					$this->setError(JText::_('JLIB_APPLICATION_ERROR_BATCH_MOVE_CATEGORY_NOT_FOUND'));
					return false;
				}
			}
		}

		//if (empty($categoryId)) {
		if (!isset($categoryId)) {
			$this->setError(JText::_('JLIB_APPLICATION_ERROR_BATCH_MOVE_CATEGORY_NOT_FOUND'));
			return false;
		}

		// Check that user has create and edit permission for the component
		$extension	= JRequest::getCmd('option');
		$user		= JFactory::getUser();
		if (!$user->authorise('core.create', $extension)) {
			$this->setError(JText::_('JLIB_APPLICATION_ERROR_BATCH_CANNOT_CREATE'));
			return false;
		}

		if (!$user->authorise('core.edit', $extension)) {
			$this->setError(JText::_('JLIB_APPLICATION_ERROR_BATCH_CANNOT_EDIT'));
			return false;
		}

		// Parent exists so we let's proceed
		foreach ($pks as $pk)
		{
			// Check that the row actually exists
			if (!$table->load($pk)) {
				if ($error = $table->getError()) {
					// Fatal error
					$this->setError($error);
					return false;
				}
				else {
					// Not fatal error
					$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_BATCH_MOVE_ROW_NOT_FOUND', $pk));
					continue;
				}
			}

			// Set the new category ID
			$table->parent_id = $categoryId;

			// Check the row.
			if (!$table->check()) {
				$this->setError($table->getError());
				return false;
			}

			// Store the row.
			if (!$table->store()) {
				$this->setError($table->getError());
				return false;
			}
		}

		// Clean the cache
		$this->cleanCache();

		return true;
	}
	
	
	public function increaseOrdering($categoryId) {
		
		$ordering = 1;
		$this->_db->setQuery('SELECT MAX(ordering) FROM #__phocagallery_categories WHERE parent_id='.(int)$categoryId);
		$max = $this->_db->loadResult();
		$ordering = $max + 1;
		return $ordering;
	}
	

	public function batch($commands, $pks)
	{
		
		// Sanitize user ids.
		$pks = array_unique($pks);
		JArrayHelper::toInteger($pks);

		// Remove any values of zero.
		if (array_search(0, $pks, true)) {
			unset($pks[array_search(0, $pks, true)]);
		}

		if (empty($pks)) {
			$this->setError(JText::_('JGLOBAL_NO_ITEM_SELECTED'));
			return false;
		}

		$done = false;

		if (!empty($commands['assetgroup_id'])) {
			if (!$this->batchAccess($commands['assetgroup_id'], $pks)) {
				return false;
			}

			$done = true;
		}

		//PHOCAEDIT - because parent it is 0
		//if (!empty($commands['category_id'])) {
		if (isset($commands['category_id'])) {
			
			$cmd = JArrayHelper::getValue($commands, 'move_copy', 'c');

			if ($cmd == 'c' && !$this->batchCopy($commands['category_id'], $pks)) {
				return false;
			}
			else if ($cmd == 'm' && !$this->batchMove($commands['category_id'], $pks)) {
				return false;
			}
			$done = true;
		}

		if (!$done) {
			$this->setError(JText::_('JLIB_APPLICATION_ERROR_INSUFFICIENT_BATCH_INFORMATION'));
			return false;
		}

		// Clear the cache
		$this->cleanCache();

		return true;
	}
	
	protected function generateNewTitle($category_id, $alias, $title)
	{
		// Alter the title & alias
		$table = $this->getTable();
		while ($table->load(array('alias'=>$alias, 'parent_id'=>$category_id))) {
			$m = null;
			if (preg_match('#-(\d+)$#', $alias, $m)) {
				$alias = preg_replace('#-(\d+)$#', '-'.($m[1] + 1).'', $alias);
			} else {
				$alias .= '-2';
			}
			if (preg_match('#\((\d+)\)$#', $title, $m)) {
				$title = preg_replace('#\(\d+\)$#', '('.($m[1] + 1).')', $title);
			} else {
				$title .= ' (2)';
			}
		}

		return array($title, $alias);
	}
	
}
?>