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
                Mobile : 06 20 89 70 15<br/>
                Blog : <a href="http://lamadebrandacot.skyblog.com" target="_blank">http://lamadebrandacot.skyblog.com</a>
              </p>
              <h3>NOUS TROUVER</h3>
              <div id="map-canvas"></div>
            </div>
            <div class="large-6 medium-6 small-12 cell">
              <form action="" method="post">
                <h3>FORMULAIRE DE CONTACT</h3>
                <p>
                  Merci de bien vouloir remplir ce formulaire afin de nous faire part de vos demandes.
                </p>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">E-mail principal</span>
                  <div class="large-9 medium-9 small-12"><input type="email" name="email" value="" placeholder="adresse@mail.com"></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Nom Prénom</span>
                  <div class="large-9 medium-9 small-12"><input type="text" name="nom" value="" placeholder="Mes nom et prénom"></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Téléphone</span>
                  <div class="large-9 medium-9 small-12"><input type="tel" name="telephone" value="" placeholder="Mon téléphone"></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Mon message</span>
                  <div class="large-9 medium-9 small-12"><textarea name="message" rows="5" placeholder="Mon message"></textarea></div>
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
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
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
