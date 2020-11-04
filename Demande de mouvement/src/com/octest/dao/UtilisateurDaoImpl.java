package com.octest.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.octest.beans.*;
import com.octest.beans.Date;


public class UtilisateurDaoImpl implements UtilisateurDao {
    private DaoFactory daoFactory;

    UtilisateurDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

    @Override
    public void ajouter(Utilisateur utilisateur) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("INSERT INTO noms(nom,prenom,code,mat,fonction,equipe,username,password) VALUES(?, ?, ?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, utilisateur.getNom());
            preparedStatement.setString(2, utilisateur.getPrenom());
            preparedStatement.setString(3, utilisateur.getCode());
            preparedStatement.setString(4, utilisateur.getMat());
            preparedStatement.setString(5, utilisateur.getFonction());
            preparedStatement.setString(6, utilisateur.getEquipe());
            preparedStatement.setString(7, utilisateur.getUsername());
            preparedStatement.setString(8, utilisateur.getPassword());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<Utilisateur> lister() {
        List<Utilisateur> utilisateurs = new ArrayList<Utilisateur>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT * FROM noms;");

            while (resultat.next()) {
            	int id = resultat.getInt("id");
                String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                String code = resultat.getString("code");
                String mat = resultat.getString("mat");
                String fonction = resultat.getString("fonction");
                String equipe = resultat.getString("equipe");
                String username = resultat.getString("username");
                String password = resultat.getString("password");

                Utilisateur utilisateur = new Utilisateur(nom,prenom,code,mat,fonction,equipe,username,password);
                utilisateur.setId(id);

                utilisateurs.add(utilisateur);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utilisateurs;
    }
    
    @Override
    public Utilisateur login(String username,String password) {
        
    	Utilisateur utilisateur = new Utilisateur();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT id,nom, prenom FROM noms where username = '"+username+"' and password = '"+password+"';");

            if (resultat.next()) {
            	int id = resultat.getInt("id");
            	String nom = resultat.getString("nom");
                String prenom = resultat.getString("prenom");
                
                utilisateur.setId(id);
                utilisateur.setNom(nom);
                utilisateur.setPrenom(prenom);
            }
            
            else {
            	return (null) ;
            }
            
        }
        
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        return utilisateur;
      
    	
    	
    }

    public void changer_username(int id,String username) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("UPDATE noms SET username = ? WHERE id = ?;");
            preparedStatement.setString(1, username);
            preparedStatement.setInt(2, id);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
    
    public void changer_password(int id,String password) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("UPDATE noms SET password = ? WHERE id = ?;");
            preparedStatement.setString(1, password);
            preparedStatement.setInt(2, id);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    
    public void changer_code(int id,String username) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("UPDATE noms SET code = ? WHERE id = ?;");
            preparedStatement.setString(1, username);
            preparedStatement.setInt(2, id);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
    
    public void changer_mat(int id,String password) {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement("UPDATE noms SET mat = ? WHERE id = ?;");
            preparedStatement.setString(1, password);
            preparedStatement.setInt(2, id);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

	@Override
	public void new_pe(int id,String date, String motif) {
		Connection connexion = null;
        PreparedStatement preparedStatement = null;
        

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(
            		"INSERT INTO demandes(id_user,date_demande,type,etat,date,motif) VALUES(?, ?, ?, ?, ?, ?);");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, Date.getTime());
            preparedStatement.setString(3, "PE");
            preparedStatement.setString(4,Etat.etat(this.getUser(id)));
            preparedStatement.setString(5, date);
            preparedStatement.setString(6, motif);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public void new_rc(int id,String date, String motif) {
		Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(
            		"INSERT INTO demandes(id_user,date_demande,type,etat,date,motif) VALUES(?, ?, ?, ?, ?, ?);");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, Date.getTime());
            preparedStatement.setString(3, "RC");
            preparedStatement.setString(4,Etat.etat(this.getUser(id)));
            preparedStatement.setString(5, date);
            preparedStatement.setString(6, motif);



            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public void new_ch_p(int id,String date, String poste_act, String poste_dem, String id_permutant) {
		Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(
            		"INSERT INTO demandes(id_user,date_demande,type,etat,date,poste_act,poste_dem,id_perm) VALUES(?, ?, ?, ?, ?, ?, ?, ?);");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, Date.getTime());
            preparedStatement.setString(3, "CH-P");
            preparedStatement.setString(4,"Attente la validation du permutant");
            preparedStatement.setString(5, date);
            preparedStatement.setString(6, poste_act);
            preparedStatement.setString(7, poste_dem);
            preparedStatement.setString(8, id_permutant);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public void new_aut_s(int id,String date, String heure, String motif) {
		Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(
            		"INSERT INTO demandes(id_user,date_demande,type,etat,date,heure,motif) VALUES(?, ?, ?, ?, ?, ?, ?);");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, Date.getTime());
            preparedStatement.setString(3, "AUT-S");
            preparedStatement.setString(4,Etat.etat(this.getUser(id)));
            preparedStatement.setString(5, date);
            preparedStatement.setString(6, heure);
            preparedStatement.setString(7, motif);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public void new_autre(int id,String objet, String description) {
		Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(
            		"INSERT INTO demandes(id_user,date_demande,type,etat,poste_act,poste_dem) VALUES(?, ?, ?, ?, ?, ?);");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, Date.getTime());
            preparedStatement.setString(3, "Autre");
            preparedStatement.setString(4,Etat.etat(this.getUser(id)));
            preparedStatement.setString(5, objet);
            preparedStatement.setString(6, description);


            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
	}

	@Override
	public String get_fonction(int id) {
		
		Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        String fonction = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT fonction FROM noms where id = "+id+";");

            if (resultat.next()) {
      
            	fonction = resultat.getString("fonction");
                
            }
            
            
        }
        
        catch (SQLException e) {
            e.printStackTrace();
        }
        return fonction;
	}
	
	public String get_equipe(int id) {
		
		Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        String fonction = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT equipe FROM noms where id = "+id+";");

            if (resultat.next()) {
      
            	fonction = resultat.getString("equipe");
                
            }
            
            
        }
        
        catch (SQLException e) {
            e.printStackTrace();
        }
        return fonction;
	}

	@Override
	public List<Demande> mes_demandes(int id_s) {
		
		List<Demande> demandes = new ArrayList<Demande>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT * FROM demandes where id_user ="+id_s+" ;");

            while (resultat.next()) {
            	
            	Demande demande = new Demande() ;
            	demande.setId(resultat.getInt("id"));
                demande.setDate_demande(resultat.getString("date_demande"));
                demande.setType(resultat.getString("type"));
                demande.setEtat(resultat.getString("etat"));

                demandes.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return demandes;
        
        
	}

	public Demande consulter(int id) {
		
		Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        Demande demande = new Demande() ;
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT * FROM demandes where id ="+id+" ;");

            if (resultat.next()) {
            	demande.setId(resultat.getInt("id"));
            	demande.setId_source(resultat.getInt("id_user"));
                demande.setDate_demande(resultat.getString("date_demande"));
                demande.setType(resultat.getString("type"));
                demande.setEtat(resultat.getString("etat"));
                demande.setDate(resultat.getString("date"));
                demande.setHeure(resultat.getString("heure"));
                demande.setPoste_act(resultat.getString("poste_act"));
                demande.setPoste_dem(resultat.getString("poste_dem"));
                demande.setId_perm(resultat.getInt("id_perm"));
                demande.setMotif(resultat.getString("motif"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return demande;
	}

	public Utilisateur getUser(int id) {
        
    	Utilisateur utilisateur = new Utilisateur();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT * FROM noms where id = "+id+";");

            if (resultat.next()) {
                
                utilisateur.setId(resultat.getInt("id"));
                utilisateur.setNom(resultat.getString("nom"));
                utilisateur.setPrenom(resultat.getString("prenom"));
                utilisateur.setCode(resultat.getString("code"));
                utilisateur.setMat(resultat.getString("mat"));
                utilisateur.setFonction(resultat.getString("fonction"));
                utilisateur.setEquipe(resultat.getString("equipe"));
            }
            
            else 	return (null) ;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        return utilisateur;  
	}

	public List<Demande> reception(int id_s) {
		
		List<Demande> demandes = new ArrayList<Demande>();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;
        
        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT * FROM demandes ;");

            while (resultat.next()) {
            	
            	Demande demande = new Demande() ;
            	demande.setId(resultat.getInt("id"));
            	demande.setId_source(resultat.getInt("id_user"));
                demande.setDate_demande(resultat.getString("date_demande"));
                demande.setType(resultat.getString("type"));
                demande.setEtat(resultat.getString("etat"));
                demande.setId_perm(resultat.getInt("id_perm"));
                
                System.out.println(id_s);
                System.out.println(demande.getId_perm());

                if (demande.getEtat().equals("En attente la validation du "+this.get_fonction(id_s))
                		|| demande.getEtat().equals("En attente la validation du "+this.get_fonction(id_s)+" "+this.get_equipe(id_s))
                		|| demande.getId_perm()==id_s)
                demandes.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return demandes;
        
        
	}

	public void dicision(String dicision,int id_dem,int id_user) {
		
		Connection connexion = null;
        PreparedStatement preparedStatement = null;
        
        if (dicision.equals("valider")) {
	        try {
	            connexion = daoFactory.getConnection();
	            preparedStatement = connexion.prepareStatement("UPDATE demandes SET etat = ? WHERE id = ?;");
	            if (this.consulter(id_dem).getEtat().equals("Attente la validation du permutant"))
	            	preparedStatement.setString(1, Etat.etat(this.consulter(id_dem).getEtat(), this.get_equipe(id_user)));
	            else 
	            	preparedStatement.setString(1, Etat.etat(this.consulter(id_dem).getEtat()));
	            preparedStatement.setInt(2, id_dem);
	
	
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }		
			
		}
        else {
        	try {
	            connexion = daoFactory.getConnection();
	            preparedStatement = connexion.prepareStatement("UPDATE demandes SET etat = ? WHERE id = ?;");
	            preparedStatement.setString(1,"Non Validé");
	            preparedStatement.setInt(2, id_dem);
	
	
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }		
        }
	}
	
	public void delet_user(int id) {
		
		Connection connexion = null;
        PreparedStatement preparedStatement = null;
        
		        try {
		            connexion = daoFactory.getConnection();
		            preparedStatement = connexion.prepareStatement("DELETE FROM noms WHERE id= ? ;");
		            
		            preparedStatement.setInt(1, id);
		
		
		            preparedStatement.executeUpdate();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }		
				
		
	}
}