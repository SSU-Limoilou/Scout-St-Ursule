<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clefs secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C'est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d'installation. Vous n'avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wp-scout-bd');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'Scout');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'Scout2016');

/** Adresse de l'hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N'y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clefs uniques d'authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n'importe quel moment, afin d'invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'gr{XbQXY.BRZt#iG,|kC&i|G`M)k(oExMq7UC~Ru`8d3`w(?8fsqA(J^Ap<~cLAn');
define('SECURE_AUTH_KEY',  '%35%=?$)k3@M#p0vu{ @.bnd<ekA%K#NxeCPt:wk.YM0x4A6{>I0zFxv;C@,;qXH');
define('LOGGED_IN_KEY',    'aM)#:`CUS//DIla4<]QkNO@8PW^x!!o_JJ1d@Rfnt^[10c-Qv;s+x?R.DFO(&Z8;');
define('NONCE_KEY',        'CAr^T)ccz]_S3&My>Phl3I^WbJ69h#ARY.qn&a1!Tfd0AAg#bv}pTr3&LEG5PO~n');
define('AUTH_SALT',        '^TFZfC3vB->uUh:@2 ,ofQT+O6u=O>k(M0U$ S&De:Z^=C #H|osfs}MUb=/n302');
define('SECURE_AUTH_SALT', 'TR1[[LY[hdql8yX~QLD/F =eO^{3PrYwkVzd`7/9Q}i|HSI6w)>y>*deaDR]&Fkc');
define('LOGGED_IN_SALT',   '%,@;G|?&gKAW^J*f~^sKN21a5T{!7gne$/[k4a^~8_.jY$4GKYJqK_yG9yJ/x~ZQ');
define('NONCE_SALT',       'xvnX &yj9HM_)bc/AisVp7p;1o_+,]J&o]U}](NR1pkQ3%eIS1K@B2M6jOPN2~+p');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N'utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés!
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l'affichage des
 * notifications d'erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d'extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d'information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 * 
 * @link https://codex.wordpress.org/Debugging_in_WordPress 
 */
define('WP_DEBUG', false);

/* C'est tout, ne touchez pas à ce qui suit ! Bon blogging ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');