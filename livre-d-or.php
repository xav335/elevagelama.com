<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <title>Les Lamas de Brandacot : Livre d'or</title>
    <?php include('inc/meta.php'); ?>
  </head>
  <body>
    <?php include('inc/header.php'); ?>
    <main class="page">
      <section id="contactez-nous">
        <div class="grid-container">
          <div class="grid-x grid-padding-x">
            <div class="large-12 medium-12 small-12 cell">
              <h2>LIVRE D'OR</h2>
            </div>
            <div class="large-6 medium-6 small-12 cell">
	      <h3>Anne-marie</h3>
              	<p>
                  Des animaux finalement méconnus, Joël éleveur passionné - des ateliers interactifs - une belle journée de découverte pour enfants et  adultes
          	</p>	
              <h3>Xavier</h3>
              <p>
                  Une visite très agréable et un accueil excellent, les enfants étaient enchantés.
              </p>
              <h3>Andrea G. Collège de Latresne</h3>
              <p>
                  Une viste pédagogique très instructive, nos classes de 6ème et de 5ème ont été enchantés. Je recommande !
              </p>
              <h3>Gregoire B.</h3>
              <p>
                  Des animaux très attachants élévés par des pationnés,Idéal pour une sortie éducative et ludique avec tous d'activités pour les enfants et les adultes.
              </p>
            </div>
            <div class="large-6 medium-6 small-12 cell">
             <div id="resultat" class="resultat">
		
    	       </div>
               <form  id="formulaire" action="" method="post">
                <h3>LAISSEZ NOUS UN TEMOIGNAGE</h3>
                <p>
                  Merci de bien vouloir remplir ce formulaire afin de nous faire part de vos témoignage.
                </p>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">E-mail principal</span>
                  <div class="large-9 medium-9 small-12"><input type="email" name="email" id="email" value="" placeholder="adresse@mail.com"></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Nom Prénom</span>
                  <div class="large-9 medium-9 small-12"><input type="text" name="name" id="nom" value="" placeholder="Mon nom et prénom"></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Mon message</span>
                  <div class="large-9 medium-9 small-12"><textarea name="message" id="message" rows="5" placeholder="Mon message"></textarea></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12"> </span>
                  <div class="large-9 medium-9 small-12 text-right"><input type="submit" value="Envoyer"></div>
                </label>
              </form>
               <div id="resultat" class="resultat">
		
    	       </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <?php include('inc/footer.php'); ?>
    <script type="text/javascript">
      $(document).ready(function(){
        $('#menu li:nth-child(6)').addClass('active');
      });

	//--  GOLDBOOK ---//
      $(document).on('submit','#formulaire',function(e) {
    	  e.preventDefault();
    	  data = $(this).serializeArray();

    	  data.push({
    	   		name: 'action',
    	    	value: 'sendMail'
    	  	})

    	  console.log(data);

    	    /* I put the above code for check data before send to ajax*/
    	    $.ajax({
    		        url: '/ajax/goldbook.php',
    		        type: 'post',
    		        data: data,
    		        success: function (data) {
    		            $("#resultat").html("<h3>Merci pour votre message</h3>");
    		        	$("#nom").val("");
    		           	$("#email").val("");
    		           	$("#message").val("");
    		        },
    		        error: function() {
    		        	 $("#resultat").html("<h3>Une erreur s'est produite !</h3>");
    		        }
    		   	});
    	return false;
    	})
        //--  GOLDBOOK ---//
    </script>

  </body>
</html>
