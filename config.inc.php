<?php
/**
 * Filename:  includes/config.inc.php
 * Function:  Configuration file for phpDivingLog.
 * @author  Lloyd Borrett - www.borrett.id.au Rob Lensen <rob@bsdfreaks.nl>
 * @package phpdivinglog
 * @version $Rev$
 * Last Modified: $Date:   Mon Aug 1 15:13:21 2011 +0200 $
 */

/**
 *  database settings
 */
$_config['database_server'] = "localhost";
$_config['database_db'] = "divelog";
$_config['database_username'] = "divelog";
$_config['database_password'] = "password";

/**
 * Define the connection type use mysqli for php5 (check if mysqli is installed), otherwise enter mysql
 * The driver mysqli is not used everywhere (planned)
 */
$_config['database_type'] = "mysqli"; 

/**
 * Enter prefix for single user mode (for multi user see below) 
 */
$_config['table_prefix'] = ""; 

/**
 *  language setting determines which language file is used
 */
$_config['language'] = "english";

/**
 *  Suppress DateTime warnings by setting the default timezone 
 *  used by all date/time functions to the currently set one
 *  or you can set the timezone to what you want, e.g.
 *  date_default_timezone_set('Australia/Melbourne');
 *  See http://www.php.net/manual/en/timezones.php for the list of valid timezones
 */
if(function_exists("date_default_timezone_set") and function_exists("date_default_timezone_get")) {
  @date_default_timezone_set(@date_default_timezone_get());
}

/**
 * Some hosts don't support mod_rewrite, so we must have option to use old
 * query strings  like ?id=&user=
 * If query_string = false normal rewrite is used, if set to true query string is used
 */
$_config['query_string'] = false;

/**
 * change this to your website url
 */
$_config['web_root'] = 'http://localhost/lrb-2004/phpDivinglog3'; 

/**
 * Your path where divelog is located
 * EXAMPLE: http://www.foo.com/users/j/jo/john
 * abs_url_path = /users/j/jo/john
 * Nothing todo where phpdivinglog is installed on your harddrive!
 */
$_config['abs_url_path'] = '/lrb-2004/phpDivinglog3'; 

/**
 * See below for more file location settings 
 */

/**
 * Define if we need to embed phpDivinglog
 * @todo make embedding possible 
 */
$_config['embed_mode'] = false;

/**
 * when view_type = 1 grid with ajax is displayed, view_type = 2 old table mode 
 */
$_config['view_type'] = 1;

/**
 * When multiuser is set to true, you need to define the table prefixes
 * Data for all the users should be in the same database
 */
$_config['multiuser'] = false;

/**
 * Define the table prefix for each user
 * $_config['user_prefix'][user_id] = 'table_prefix'
 * The user_id should start with 1 and can be defined. 
 */
$_config['user_prefix'][1] = 'diver1';
$_config['user_prefix'][2] = 'diver2';
$_config['user_prefix'][3] = 'diver3';

/**
 * number of items per page in the lists
 */
$_config['max_list'] = 20;

/**
 * Set to true if you want to display the profile in the dive detail 
 */
$_config['show_profile'] = true;

/**
 * comments in RTF format?
 */
$_config['dlog_comments_rtf'] = true;

/**
 * specify what to show in user information
 * @todo make these option work 
 */
$_config['user_show'] = true;
$_config['user_show_general'] = true;
$_config['user_show_comments'] = true;
$_config['user_show_photo'] = true;
$_config['user_show_certs'] = true;
$_config['user_show_medical'] = true;

/**
 * Specify if equipment service reminders should be shown
 * and the number of days before the due date to start reminding
 * @todo make this work 
 */
$_config['equipment_service_reminder'] = true;
$_config['equipment_service_warning'] = 30;

/**
 * Comma separated
 * Specify if lists (like equipment used, dives at site etc.)
 * should be comma separated.
 */
$_config['comma_separated'] = true;
$_config['comma_separator'] = ' |';

/**
 * Enable thumbs  
 */
$_config['divepics_preview'] = true;

/**
 * Enable resizing of the uploaded pictures by GD
 * If set to false, full size images will be shown and the
 * thumbnails will be generated each time (cpu usage)
 */
$_config['enable_resize'] = true;

/**
 * Set the maximum width and height of the thumbnails, which are created automaticly
 * Usually a 4:3 ratio, e.g. 100:75, 120:100 
 * Width and height are set in px
 */
$_config['thumb-width'] = 100; 
$_config['thumb-height'] = 75; 

/**
 * Set the maximum width of the pictures in the gallery 
 * Width is set in px
 */
$_config['pic-width'] = 800;

/**
 * get exif data from the images 
 */
$_config["get_exif_data"] = true;

/**
 * DIVE PROFILE SETTINGS
 * name of the graphic image to use as the dive profile background
 * image size is expected to be 550 x 400
 * set to "" for no background image
 * $_config['graph_background_image'] = "images/jellyfish-and-divers.jpg";
 */
$_config['graph_background_image'] = "";

/**
 *  Set the background color for the diveprofile and pie chart  
 */
$_config['background_color'] = '#ffffff';

/**
 * set to 'true' to show Y scales on two sides
 * set to 'false' to show Y scale only on left side
 */
$_config['graph_show_two_scales'] = true;

/**
 * set to 'true' to show both metric and imperial units on chart scales
 * set to 'false' to show only the length units specified by the unit conversion value
 */
$_config['graph_show_both_units'] = true;

/**
 * UNIT CONVERSION 
 * set values to true if you want to convert from metric units to imperial units,
 * or to false if values should be left as metric units. 
 */

/**
 * Define date format dmy- result in day-month-year 
 */
$_config['date_format'] = 'date:dmy:-';

/**
 * metres to feet
 */
$_config['length'] = false;

/**
 * bar to psi
 */
$_config['pressure'] = false;

/**
 * kilograms (kg) to pounds (lbs)
 */
$_config['weight'] = false;

/**
 * Celsius to Farenheight
 */
$_config['temp'] = false;

/**
 * litres to cubic feet
 */
$_config['volume'] = false;

/**
 * Lattitue and Longitude format
 * Valid values are:
 * d - degrees - ddd.dddddd
 * dm - degress & minutes - ddd mm.mmmm
 * dms - degrees, minutes & seconds - ddd mm ss.ss
 */
$_config['coord_format'] = 'dm';

/**
 * DEFAULT VALUES
 * Values to use as defaults if none given.
 */
$_config['default_maxppo2'] = "1.4";
$_config['default_o2'] = "21";

/**
 * ABS path to your website (no need to change normaly)
 */
define('ABSPATH_DIVELOG', dirname(__FILE__).DIRECTORY_SEPARATOR);
$_config['app_root']        = ABSPATH_DIVELOG;  

require_once(ABSPATH_DIVELOG . "settings.php");

?>
