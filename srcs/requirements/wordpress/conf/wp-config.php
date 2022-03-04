<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// * Database settings - You can get this info from your web host * //
/** The name of the database for WordPress */
define( 'DB_NAME', 'website' );

/** Database username */
define( 'DB_USER', 'emallah' );

/** Database password */
define( 'DB_PASSWORD', '123456' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '+.*TM:UWWWJ}J+V.F(e<}kAQM5YKS2N8(?!Azzhl fwO%OZE1;6lpm,UH!gr/2bJ' );
define( 'SECURE_AUTH_KEY',  '{v0MF7[SC:u[AryOsf9vJhkkl+YwUU5kE3*My#B3+/Yh&TO2]*`ASrF&z;%@?=6w' );
define( 'LOGGED_IN_KEY',    'E1^w7RAOB(rwO,=VYU|dC?&ybr#^_u?)k/3Ip@-`s1-tZSE/XBh>,FNdjuA@-l;M' );
define( 'NONCE_KEY',        'c[}-(u9kQr=H@)>TIR^(kh-NJMJIkw-XGRE|SV~09hJhbJe{>ouifyQdEz?IOi>c' );
define( 'AUTH_SALT',        '[q)QHdVjY&x/3IpQ=g`o6h~%:}1/)7J%:Zagc@^@NT|<66b@J#%` u5Okphut,oP' );
define( 'SECURE_AUTH_SALT', '(fsB.KJu$QJV_kxT^#W4NoNYksi~)LRp_#G*X2` y6*Z5:K[[D<Pb_%TBI0rTJ%k' );
define( 'LOGGED_IN_SALT',   'jn1=[_OeY@mlj[Mw~&!nipsNALNBIUb0REByaJCJW,.i7>`RRCrI!3+WWa9ovJ%I' );
define( 'NONCE_SALT',       '7G^fW,5&Qj!W #M?!xN2;NZgPhhWVAT8XHwa?s *K//rl/A9jhQ>Fc%n}d?lX=1r' );

/*#@-/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', _DIR_ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';