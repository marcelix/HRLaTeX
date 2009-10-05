<?php
// ** MySQL settings ** //
define('DB_NAME', 'kmng1400');     // The name of the database
define('DB_USER', 'kmngweb');     // Your MySQL username
define('DB_PASSWORD', 'algebra43s.'); // ...and password
define('DB_HOST', 'titan.fsb.hr');     // 99% chance you won't need to change this value

// Change the prefix if you want to have multiple blogs in a single database.
$table_prefix  = 'wp1_';   // example: 'wp1_' or 'b2' or 'mylogin_'

// Change this to localize WordPress.  A corresponding MO file for the
// chosen language must be installed to wp-includes/languages.
// For example, install de.mo to wp-includes/languages and set WPLANG to 'de'
// to enable German language support.
define ('WPLANG', '');

/* Stop editing */

define('ABSPATH', dirname(__FILE__).'/');
require_once(ABSPATH.'wp-settings.php');
?>