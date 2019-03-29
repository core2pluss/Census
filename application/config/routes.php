<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['default_controller'] = "login";
$route['404_override'] = 'error';
$route['drilreport'] = "program_report";
$route['loginMe'] = 'login/loginMe';
$route['dashboard'] = 'user';
$route['logout'] = 'user/logout';
$route['userListing'] = 'user/userListing';
$route['userListing/(:num)'] = "user/userListing/$1";
$route['addNew'] = "user/addNew";
$route['addNewUser'] = "user/addNewUser";
$route['editOld'] = "user/editOld";
$route['editOld/(:num)'] = "user/editOld/$1";
$route['editUser'] = "user/editUser";
$route['deleteUser'] = "user/deleteUser";
$route['profile'] = "user/profile";
$route['profile/(:any)'] = "user/profile/$1";
$route['profileUpdate'] = "user/profileUpdate";
$route['profileUpdate/(:any)'] = "user/profileUpdate/$1";
$route['loadChangePass'] = "user/loadChangePass";
$route['changePassword'] = "user/changePassword";
$route['changePassword/(:any)'] = "user/changePassword/$1";
$route['pageNotFound'] = "user/pageNotFound";
$route['checkEmailExists'] = "user/checkEmailExists";
$route['login-history'] = "user/loginHistoy";
$route['login-history/(:num)'] = "user/loginHistoy/$1";
$route['login-history/(:num)/(:num)'] = "user/loginHistoy/$1/$2";
$route['forgotPassword'] = "login/forgotPassword";
$route['resetPasswordUser'] = "login/resetPasswordUser";
$route['resetPasswordConfirmUser'] = "login/resetPasswordConfirmUser";
$route['resetPasswordConfirmUser/(:any)'] = "login/resetPasswordConfirmUser/$1";
$route['resetPasswordConfirmUser/(:any)/(:any)'] = "login/resetPasswordConfirmUser/$1/$2";
$route['createPasswordUser'] = "login/createPasswordUser";

/* End of file routes.php */







/* Location: ./application/config/routes.php */




// $route['userListings'] = 'user/userListings';
$route['personal_info_create'] = 'user/personal_info_create';
// $route['table'] = 'user/table';
// $route['View_Record_People'] = 'user/View_Record_People';
// $route['addNewRecord'] = 'user/addNewRecord';
$route['familyEdit'] = 'user/familyEdit';
$route['index'] = 'user/index';
$route['Personal_information'] = 'user/personal_info_create';
$route['datagrid'] = 'user/datagrid';
$route['HeadofFamily_update'] = 'user/update_head_of_famaly';
$route['financial'] = 'user/financial';
$route['family_informationNew'] = 'user/family_informationNew';
$route['Family_to_head'] = 'user/Family_headofFamily';
$route['update_head_of_famaly'] = 'user/update_head_of_famaly';
$route['personal_info_update'] = 'user/personal_info_update';
// $route['profile'] = 'user/personal_profile';



// User Routes for user to manage the dashboard
$route['profile'] = 'UserController/User_Personal_Profile';


/* User Census Reports new routs */
$route['Family_Head_Reports_by_range'] = 'user/Family_Head_Reports_by_range';
$route['Family_Head_Reports_by_province'] = 'user/Family_Head_Reports_by_province';
$route['Family_Head_Reports_by_cities'] = 'user/Family_Head_Reports_by_cities';
$route['Head_child_filter_tree'] = 'user/Head_child_filter_tree';