<?php require_once 'inc/inc.config.php';?>
<?php 
require 'admin/classes/Goldbook.php';
require 'admin/classes/utils.php';
session_start();
$goldbook = new Goldbook();
$result = $goldbook->goldbookValidGet();
$goldbook = null;
//print_r($result);
?>
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
            <?php 
				if (!empty($result)) {
					$i=0;
					foreach ($result as $value) { 
					$i++;
					?>
					 <h3><?php echo $value['nom']?></h3>
							<p>
								<?php echo nl2br($value['message'])?>
							</p>
				<?php } ?>
			<?php } ?>	
            
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
                  <div class="large-9 medium-9 small-12"><input type="email" name="email" id="email" value="" required  placeholder="adresse@mail.com"></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Nom Prénom</span>
                  <div class="large-9 medium-9 small-12"><input type="text" name="name" id="nom" value= "" required  placeholder="Mon nom et prénom"></div>
                </label>
                <label class="grid-x">
                  <span class="large-3 medium-3 small-12">Mon message</span>
                  <div class="large-9 medium-9 small-12"><textarea name="message" id="message" rows="5" required  placeholder="Mon message"></textarea></div>
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
