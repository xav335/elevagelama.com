<? 
	require( $_SERVER[ "DOCUMENT_ROOT" ] . "/inc/inc.config.php" );
	require 'admin/classes/Contact.php';
	require 'admin/classes/utils.php';
	session_start();
	
	$debug = false;
	
	$contact = new Contact();
	
	$mon_action = $_POST[ "mon_action" ];
	$anti_spam = $_POST[ "as" ];
	//print_pre( $_POST );
	
	$affichage_success = "wait";
	$affichage_erreur = "wait";
	
	// ---- Post du formulaire ------------------------------- //
	if ( $mon_action == "poster" && $anti_spam == '' ) {
		if ( $debug ) echo "On poste...<br>";
		
		// ---- Enregistrement dans "contact" -------- //
		if ( 1 == 1 ) {
			$num_contact = $contact->isContact( $_POST[ "email" ], $debug );
			
			unset( $val );
			$val[ "id"] = $num_contact;
			$val[ "firstname"] = $_POST[ "prenom" ];
			$val[ "name"] = $_POST[ "nom" ];
			$val[ "adresse"] = $_POST[ "adresse" ];
			$val[ "cp"] = $_POST[ "cp" ];
			$val[ "ville"] = $_POST[ "ville" ];
			$val[ "email"] = $_POST[ "email" ];
			$val[ "tel"] = $_POST[ "tel" ];
			$val[ "message"] = $_POST[ "message" ];
			$val[ "newsletter"] = $_POST[ "newsletter" ];
			$val[ "fromcontact"] = "on";
			if ( $num_contact <= 0 ) $contact->contactAdd( $val, $debug );
			else $contact->contactModify( $val, $debug );
		}
		// ------------------------------------------- //
		
		// ---- Envoi du mail à l'admin -------------- //
		if ( 1 == 1 ) {
			$entete = "From:" . MAILNAMECUSTOMER . " <" . MAILCUSTOMER . ">\n";
			$entete .= "MIME-version: 1.0\n";
			$entete .= "Content-type: text/html; charset= iso-8859-1\n";
			$entete .= "Bcc:" . MAIL_BCC . "\n";
			//echo "Entete :<br>" . $entete . "<br><br>";
			
			$sujet = utf8_decode( "Prise de contact" );
			
			//$_to = "franck_langleron@hotmail.com";
			$_to = ( MAIL_TEST != '' )
		    	? MAIL_TEST
		    	: MAIL_CONTACT;
			//echo "Envoi du message à : " . $_to . "<br><br>";
			
			$message = "Bonjour,<br><br>";
			$message .= "La personne suivante a rempli le formulaire de contact de votre site :<br>";
			$message .= "Nom : <b>" . $_POST[ "nom" ] . " " . $_POST[ "prenom" ] . "</b><br>";
			$message .= "E-mail / Téléphone : <b>" . $_POST[ "email" ] . " / " . $_POST[ "tel" ] . "</b><br>";
			$message .= "Adresse postale : <b>" . $_POST[ "adresse" ] . ", " . $_POST[ "cp" ] . " " . $_POST[ "ville" ] . "</b><br>";
			$message .= "Message : <br><i>" . nl2br( $_POST[ "message" ] ) . "</i><br><br>";
			$message .= "Cordialement.";
			$message = utf8_decode( $message );
			if ( $debug ) echo $message;
			
			if ( !$debug ) $retour = mail( $_to, $sujet, stripslashes( $message ), $entete );
			//exit();
			
			$affichage_success = ( $retour ) ? "" : "wait";
			$affichage_erreur = ( $retour ) ? "wait" : "";
		}
		// ------------------------------------------- //
		//exit();
		
	}
	// ------------------------------------------------------- //
?>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <title>Les Lamas de Brandacot : contactez-nous</title>
    <?php include('inc/meta.php'); ?>
  </head>
  <body>
    <?php include('inc/header.php'); ?>
    <main class="page">
      <section id="contactez-nous">
        <div class="grid-container">
          <div class="grid-x grid-padding-x">
            <div class="large-12 medium-12 small-12 cell">
              <h2>CONTACTEZ-NOUS</h2>
            </div>
            <div class="large-6 medium-6 small-12 cell">
              <h3>NOS COORDONNÉES</h3>
              <p>Les Lamas de Brandacot</p>
              <p>
                Florence et Joël PLANTEUR<br/>
                3 Les bois de Lafont<br/>
                33390 SAINT-PAUL
              </p>
              <p>
                Tél. 05 57 42 20 61<br/>
                Mobile : 06 20 89 70 15<br/><br/>
                Les GPS répondent au lieu-dit: <strong>3 les bois de Lafont</strong>  mais également à celui de <strong>Brandacot</strong>
              </p>
              <h3>NOUS TROUVER</h3>
             <a href="https://goo.gl/WB5pRD" target="_blank" title="plan"><img src="img/plan.jpg"></a>
             
            </div>
            <div class="large-6 medium-6 small-12 cell">
                <div id="div_success" class="large-12 medium-12 small-12 columns <?=$affichage_success?>">
					<h3>Félicitations!</h3>
					<p>Votre message a été envoyé avec succès!</p>
				</div>
				
				<div id="div_erreur" class="large-12 medium-12 small-12 columns <?=$affichage_erreur?>">
					<h3>Erreur!</h3>
					<p>
						Une erreur s'est produite lors de l'envoi de votre message.<br>
						Veuillez essayer ultérieurement.
					</p>
				</div>
            
              <form id="formulaire" class="row contact" method="post" action="contactez-nous.php">
                <input type="hidden" name="mon_action" id="mon_action" value="" />
				<input type="hidden" name="as" value="" />
                <h3>FORMULAIRE DE CONTACT</h3>
                <p>
                  Merci de bien vouloir remplir ce formulaire afin de nous faire part de vos demandes.
                </p>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">E-mail principal</span>
                  <div class="large-9 medium-9 small-12"><input type="email" name="email" value="" placeholder="adresse@mail.com" required></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Nom Prénom</span>
                  <div class="large-9 medium-9 small-12"><input type="text" name="nom" value="" placeholder="Mes nom et prénom" required></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Téléphone</span>
                  <div class="large-9 medium-9 small-12"><input type="tel" name="telephone" value="" placeholder="Mon téléphone" required></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Mon message</span>
                  <div class="large-9 medium-9 small-12"><textarea name="message" rows="5" placeholder="Mon message" required></textarea></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12"> </span>
                  <div class="large-9 medium-9 small-12 text-right"><input type="submit" value="Envoyer"></div>
                </label>
              </form>
            </div>
          </div>                                               
        </div>
      </section>
    </main>

    <?php include('inc/footer.php'); ?>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCY06G9zKfwNxkjbIqSINobogSDC0CZQJQ"></script>
		<script>
			var map;
			function initialize() {

				var mapOptions = {
					mapTypeId: google.maps.MapTypeId.ROADMAP,
					mapTypeControl: false,
					zoom: 10,
					zoomControl: true,
					zoomControlOptions: {
						style: google.maps.ZoomControlStyle.SMALL,
						position: google.maps.ControlPosition.BOTTOM_RIGHT
					},
					panControl: false,
					streetViewControl: false,
					scaleControl: false,
					overviewMapControl: false,
					center: new google.maps.LatLng(45.15056901, -0.5758809999999812)
				};

				map = new google.maps.Map(document.getElementById('map-canvas'),
					mapOptions);

				var icon = {
					path: 'M16.5,51s-16.5-25.119-16.5-34.327c0-9.2082,7.3873-16.673,16.5-16.673,9.113,0,16.5,7.4648,16.5,16.673,0,9.208-16.5,34.327-16.5,34.327zm0-27.462c3.7523,0,6.7941-3.0737,6.7941-6.8654,0-3.7916-3.0418-6.8654-6.7941-6.8654s-6.7941,3.0737-6.7941,6.8654c0,3.7916,3.0418,6.8654,6.7941,6.8654z',
					anchor: new google.maps.Point(16.5, 51),
					fillColor: '#000000',
					fillOpacity: 0.6,
					strokeWeight: 0,
					scale: 0.66
				};

				var marker = new google.maps.Marker({
					position: new google.maps.LatLng(45.15056901, -0.5758809999999812),
					map: map,
					icon: icon,
					title: 'marker'
				});
			}

			google.maps.event.addDomListener(window, 'load', initialize);

        $(document).ready(function(){
          $('#menu li:last-child').addClass('active');
          $('#menu li li:first-child').removeClass('active');
        });
      </script>

  </body>
</html>
