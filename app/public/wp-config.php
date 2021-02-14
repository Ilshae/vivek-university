<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

define( 'WP_AUTO_UPDATE_CORE', true );

// ** MySQL settings - You can get this info from your web host ** //
if (strstr($_SERVER['SERVER_NAME'], 'fictional-university.local')) {
	define( 'DB_NAME', 'local' );
	define( 'DB_USER', 'root' );
	define( 'DB_PASSWORD', 'root' );
	define( 'DB_HOST', 'localhost' );
} else {
	define( 'DB_NAME', 'local' );
	define( 'DB_USER', 'root' );
	define( 'DB_PASSWORD', 'root' );
	define( 'DB_HOST', 'localhost' );
}


/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'blxaGf9AnoUZwCWUMYZx8gz7QXjhnoR9Yq8N5JhjCg5PstkvWw4ufJ7ghQoQR4M26aA7M/qj7kaXBLbJ034Ing==');
define('SECURE_AUTH_KEY',  '+3dXCaA+I3taM1TTvW5fIc11LFkpA75Ka7/LWnK4u/2lN6Ljf7oIFE07p6gns94PtA+uyV/QcSp1G3fOJZj8VQ==');
define('LOGGED_IN_KEY',    'xHjygI2yXB0yP3HRC9ddH4/SeZiD6ndXKAHtuP83oq9c3RR3DcmHEpppUola3U+ctFmkgklYstjOptHSGuhVlw==');
define('NONCE_KEY',        'UyRqh3zmRtQ6tvw6CFsTCB9JZKmlYeTVHnmE1fsrlPCsuRc5ltKqgzSECfGmp3TpYQSi9CX3gMK9zJ3aWt55iQ==');
define('AUTH_SALT',        '6FYI5Ef2iCyH+R28WaSN1hWZvmIKMPe1YrpkQrdhNPyuTuydunI6emMJGBfHogIYpqTCoivhRoR8dYGp9p+rHQ==');
define('SECURE_AUTH_SALT', 'VyvJzelhtMrfkqcgpGI4Ja1WCxA0t35QymGx9z+08WojdXuzKUMiQWzlLwQ8kAH7ggnnvwt2KQYLFEl1muD9zA==');
define('LOGGED_IN_SALT',   'TqKaSZFj1ZaJJtiJcHxmozIFyeMUguXRzNCm09aKdkQo4PAykXe4DZTfmQUAkCosvcFqF4WLnkT+hUmBU594yg==');
define('NONCE_SALT',       'PhErx54X19qJzaP5ctc/kXwTmotNT7+QueIjIuHes78CtNqm+zrKZbafSgG1JEHBCXxWMhSiVZsTK6cYpSkbGg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
