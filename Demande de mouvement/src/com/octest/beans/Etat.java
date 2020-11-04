package com.octest.beans;

public class Etat {
	
	public static String etat(Utilisateur user) {
		
		String fonction = user.getFonction();
		String equipe = user.getEquipe();

		
		if (fonction.equals("Collaborateur S/C")  || fonction.equals("Collaborateur sechage")) return ("En attente la validation du Responsable d'equipe "+equipe) ;
		else if (fonction.equals("Responsable d'equipe") 
				|| fonction.equals("Responsable liberation de produit") 
				|| fonction.equals("Secretaire technique & administratif")) return ("En attente la validation du Responsable d'atelier") ;
		else if (fonction.equals("Responsable d'atelier") 
				|| fonction.equals("Technicien process")) return ("En attente la validation du Ingenieur Process et Responsable SDA") ;
		else if (fonction.equals("Ingenieur Process et Responsable SDA")) return ("Validé") ;
		else return("non reconnu");

	}
	
	public static String etat(String etat) {
		if (etat.equals("En attente la validation du Responsable d'equipe A")
				||etat.equals("En attente la validation du Responsable d'equipe B")
				||etat.equals("En attente la validation du Responsable d'equipe C")
				||etat.equals("En attente la validation du Responsable d'equipe D"))				return ("En attente la validation du Responsable d'atelier") ;
		
		else if (etat.equals("En attente la validation du Responsable d'atelier")) 					return ("En attente la validation du Ingenieur Process et Responsable SDA") ;
		
		else if (etat.equals("En attente la validation du Ingenieur Process et Responsable SDA")) 	return ("Validé") ;
		
		else 																						return("non reconnu");
	}
	
	public static String etat(String etat,String equipe) {
		return ("En attente la validation du Responsable d'equipe "+equipe) ;
	}

}
