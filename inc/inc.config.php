<?
	//ini_set( 'display_errors', 1 );
	//error_reporting( E_ALL | ~E_DEPRECATED | E_STRICT );
	
	// ---- Définition des constantes du site ------------------------ //
	//echo $_SERVER[ "DOCUMENT_ROOT" ] . "<br>";
	switch( $_SERVER[ "DOCUMENT_ROOT" ] ) {
		
		// ---- Serveur local Franck -------- //
		case "/var/www/elevagelama" :
			$localhost = "localhost";
			$dbname = "elevagelama";
			$user = "elevagelama";
			$mdp = "elevagelama";
			break;
		
		// ---- Serveur PRE-PROD ------------ //
		case "/home/web/elevagelama" :
			$localhost = "localhost";
			$dbname = "elevagelama";
			$user = "elevagelama";
			$mdp = "elevagelama33";
			break;
		
		// ---- Serveur PROD ---------------- //
		case "/var/www/elevagelama.fr" :
			$localhost = "localhost";
			$dbname = "elevagelama";
			$user = "elevagelama";
			$mdp = "elevagelama33";
			break;
		
		default:
		    $localhost = "localhost";
			$dbname = "elevagelama";
			$user = "elevagelama";
			$mdp = "elevagelama33";
		    break;
	}
		
	define( "DBHOST",	$localhost );
	define( "DBNAME",	$dbname );
	define( "DBUSER",	$user );
	define( "DBPASSWD", $mdp );
	
	define( "MAILCUSTOMER", 	"contact@elevagelama.fr" );
	define( "MAILNAMECUSTOMER", "Lamas de Brandacot" );
	define( "URLSITEDEFAULT", 	"http://www.elevagelama.com/" );
	define( "FACEBOOK_LINK", 	"https://www.facebook.com/elevagelama" );
	define( "DAILYMOTION_LINK", "#" );
	
	// ---- Mail d'envoi
	//define( "MAIL_TEST", 	"fjavi.gonzalez@gmail.com" ); 	// Si rempli alors cette valeur sera utilisée pour les différents envois de mails
	define( "MAIL_TEST", 	"fjavi.gonzalez@gmail.com" ); // Tester la qualité du mail (https://www.mail-tester.com)
	define( "MAIL_CONTACT", "contact@elevagelama.fr" ); //elevagelama.m@orange.fr
	define( "MAIL_BCC", 	"xav335@hotmail.com,fjavi.gonzalez@gmail.com,jav_gonz@yahoo.com" );
?>
