<?
	// Passage rapide du site en TEST au site en PROD
	$en_test = 3;
	
	// Site en DEV
	if ($en_test == 1) {
		
		// Chemins g�n�raux pour acc�der aux diff�rentes pages
		$chemin = "http://localhost:800/";
	}
	
	// Site en TEST
	else if ($en_test == 2) {
		
		// Chemins g�n�raux pour acc�der aux diff�rentes pages
		$chemin = "collants.gonzalezalvarez.org/";
	}
	
	// Site en PROD
	else {
		// Chemins g�n�raux pour acc�der aux diff�rentes pages
		$chemin = "http://www.fermelama.com/";
	}
?>