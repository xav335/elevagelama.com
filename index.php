<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les Lamas de Brandacot</title>
    <link rel="stylesheet" href="css/foundation.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="css/app.css">
  </head>
  <body>
    <?php include('inc/header.php'); ?>
    <main>
      <section id="actualite">
        <div class="grid-container">
          <div class="grid-x grid-padding-x">
            <div class="large-9 medium-8 small-12 cell">
              <div class="swiper-container swiper-container-image">
                <img src="img/silhouette.png" alt="silhouette lama">
                <div class="swiper-wrapper">
                  <div class="swiper-slide" style="background-image:url('img/image-fond-1.jpg');" /></div>
                  <div class="swiper-slide" style="background-image:url('img/image-fond-2.jpg');"></div>
                  <div class="swiper-slide" style="background-image:url('img/image-fond-3.jpg');"></div>
                  <div class="swiper-slide" style="background-image:url('img/image-fond-4.jpg');"></div>
		</div>
                <div class="swiper-pagination swiper-pagination-image"></div>
              </div>
            </div>
            <div class="large-3 medium-4 small-12 cell">
              <h2>actualités</h2>
              <div class="swiper-container swiper-container-actu">
                <div class="swiper-wrapper">
                  <?php
                  	if($flux = simplexml_load_file('http://www.elevagelama.com/xmlNews.php')){
                  		foreach($flux->item as $valeur){
                  ?>
                  <div class="swiper-slide">
                    <div>
                    <?php
                    			echo '<p>'.$valeur->date.'</p>';
                      		echo '<p>'. utf8_decode($valeur->texte).'</p>';
                          if(!empty($valeur->media->urlMedia)){
                              echo "<a data-fancybox href='".$valeur->media->urlMedia."'><img src='".$valeur->media->urlApercu."' alt='image illustration'/></a>";
                          };
                    ?>
                  </div>
                  </div>
                  <?php
                  		}
                  	} else {
                  		echo 'Erreur de lecture du flux RSS';
                  	}
                  ?>
                </div>
                <div class="swiper-pagination swiper-pagination-actu"></div>
              </div>
            </div>
          </div>
        </section>
        <section>
          <div class="grid-x grid-padding-x bg-darkest">
            <div class="large-9 medium-8 small-12 cell edito">
              <div>
                <p>Agréés Ferme de découverte et pédagogique par le réseau  Bienvenue à la Ferme  et l’Inspection académique nous recevons en visite les groupes scolaires, centre de loisirs et le Grand Public</p>
                <p>Au sein de notre élevage professionnel situé en Haute-Gironde,<br/>
                  nous nous destinons également à la production de crias de qualité (petits lamas).</p>
                <p class="signature">Florence et Joël Planteur</p>
              </div>
            </div>
            <div class="large-3 medium-4 small-12 cell">
              <img src="img/ponpon.png" alt="ponpon">
            </div>
          </div>
        </section>
      </div>
    </main>

    <?php include('inc/footer.php'); ?>
   <script type="text/javascript">
      $(document).ready(function(){
        $('#menu li:first-child').addClass('active');
        $('#menu li li:first-child').removeClass('active');
      });
    </script>
  </body>
</html>
