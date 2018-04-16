<?php require_once 'inc/inc.config.php';?>
<?php 
require 'admin/classes/Lamas.php';
require 'admin/classes/utils.php';
session_start();
$news = new Lamas();
if (!empty($_GET)){
	$result = $news->newsValidGet($_GET['id']);
} else {
	$result = $news->newsValidGet(null);
}	
//print_r($result);
	if (empty($result)) {
		$titre=  		'';
		$date_news= 	'';
		$contenu= 		'Pas de news pour le moment.';
	} else {
	    $idLama=        $result[0]['id_news'];
		$titre=  		$result[0]['titre'];
		$date_news= 	traitement_datetime_affiche($result[0]['date_news']);
		$image1= 		$result[0]['image1'];
		$accroche= 		$result[0]['accroche'];
		$contenu= 		$result[0]['contenu'];
	}
?>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <title>Les Lamas de Brandacot : Lamas en vente</title>
    <?php include('inc/meta.php'); ?>
  </head>
  <body>
    <?php include('inc/header.php'); ?>
    <main class="page">
      <section id="vente-lamas">
        <div class="grid-container">
          <div class="grid-x grid-padding-x">
            <div class="large-12 medium-12 small-12 cell">
            
              <h2>LAMAS EN VENTE</h2>
            </div>
             <div class="large-12 medium-12 small-12 cell">
                          <Hr>
                </div>
             <?php 
		         if (!empty($result)) {
			        $i=0;
			        foreach ($result as $value) { 
			        $i++;
			        ?>
                <div class="large-6 medium-6 small-12 cell">
                    <h5><?php echo traitement_datetime_affiche($value['date_news'])?></h5>
                    <h6><?php echo $value['titre']?></h6>
                  <p>
                    <?php echo nl2br($value['contenu'])?>
                  </p>
                </div>
                <div class="large-3 medium-3 small-12 cell">
                     <?php if(!empty($value['image1'])){ ?>
                        <a data-fancybox href="photos/lamas<?php echo $value['image1']?>" ><img src="/photos/lamas/thumbs<?php echo $value['image1']?>" alt="" /></a>
                     <?php }?>
                </div>
                <div class="large-3 medium-3 small-12 cell">
                  <div class="zone-vente">
                    <a class="contact" href="contactez-nous.php?idLama=<?php echo $idLama?>">
                      Contactez-nous à propos de ce lama
                    </a>
                  </div>
                </div>
                <div class="large-12 medium-12 small-12 cell">
                          <Hr>
                </div>
                <?php
                  	}
                  	} else {   ?>
                  		 <div class="large-12 medium-12 small-12 cell">
                          <br>
                          <H2>
                           Pas de lamas en vente en ce moment.
                          </H2>
                          <br><br>
                        </div>
                  	
                  <?php 
                  	}
                  ?>
          </div>
        </section>
    </main>

    <?php include('inc/footer.php'); ?>
    <script type="text/javascript">
      $(document).ready(function(){
        $('#menu li:nth-child(5)').addClass('active');
      });
    </script>

  </body>
</html>
