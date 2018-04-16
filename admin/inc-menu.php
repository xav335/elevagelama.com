	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                	<div class="navbar-header">
	                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	                        <span class="icon-bar"></span>
	                        <span class="icon-bar"></span>
	                        <span class="icon-bar"></span>
	                    </button>
                    <a  href="/admin/"><img src="/admin/img/logo.png" height="51"/></a>
                	</div>
                	<div class="col-md-12 collapse navbar-collapse">
	           			<ul class="nav navbar-nav">
	           				<li class="dropdown">
					          	<a href="/admin/news-list.php" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Actualités <span class="caret"></span></a>
					          	<ul class="dropdown-menu" role="menu">
					            	<li><a href="/admin/news-edit.php">Ajout</a></li>
					            	<li><a href="/admin/news-list.php">Modif / Suppr</a></li>
					          	</ul>
					        </li>
	                        <li class="dropdown">
					          	<a href="/admin/goldbook-list.php" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Livre d'or <span class="caret"></span></a>
					          	<ul class="dropdown-menu" role="menu">
					            	<li><a href="/admin/goldbook-edit.php">Ajout</a></li>
					            	<li><a href="/admin/goldbook-list.php">Modif / Suppr</a></li>
					          	</ul>
					        </li>
					         <li class="dropdown">
					          	<a href="/admin/lamas-list.php" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Lamas en vente<span class="caret"></span></a>
					          	<ul class="dropdown-menu" role="menu">
					            	<li><a href="/admin/lamas-edit.php">Ajout vente lama</a></li>
					            	<li><a href="/admin/lamas-list.php">Modif / Suppr</a></li>
					            	<li class="divider"></li>
					          	</ul>
					        </li>
					         <li class="dropdown">
					          	<a href="/admin/contact-list.php" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Contacts <span class="caret"></span></a>
					          	<ul class="dropdown-menu" role="menu">
					            	<li><a href="/admin/contact-edit.php">Ajout</a></li>
					            	<li><a href="/admin/contact-list.php">Modif / Suppr</a></li>
					            	<li class="divider"></li>
					            	<li><a href="/admin/contact-import.php">Import / Export</a></li>
					          	</ul>
					        </li>
	                       
	                    </ul>
                    </div> 
                    <div class="col-md-1 collapse navbar-collapse">
                      	<a class="btn btn-success pull-right" href="/admin/?action=getout">Exit</a>
                     </div> 
                </div><!--/.nav-collapse -->
               
        </nav>
<script type="text/javascript">
$(document).ready(function () {
	var url = window.location;
	// Will only work if string in href matches with location
	$('ul.nav a[href="'+ url +'"]').parent().addClass('active');

	// Will also work for relative and absolute hrefs
	$('ul.nav a').filter(function() {
	    return this.href == url;
	}).parent().addClass('active');
	});
</script>
