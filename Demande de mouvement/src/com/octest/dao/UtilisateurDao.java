package com.octest.dao;

import java.util.List;

import com.octest.beans.Utilisateur;
import com.octest.beans.Demande;

public interface UtilisateurDao {
	
    public void ajouter( Utilisateur utilisateur );
    
    public List<Utilisateur> lister();
    
    public Utilisateur login(String username,String password);
    
    public void changer_username(int id,String username) ;
    public void changer_password(int id,String password) ;
    public void changer_code(int id,String code) ;
    public void changer_mat(int id,String mat) ;
    
    public void new_pe(int id,String date,String motif) ;
    public void new_rc(int id,String date,String motif) ;
    public void new_ch_p(int id,String date,String poste_act,String poste_dem,String id_permutant) ;
    public void new_aut_s(int id,String date,String heure,String motif) ;
    public void new_autre(int id,String objet,String description) ;
    
    public String get_fonction(int id) ;
    public String get_equipe(int id) ;
    
    public List<Demande> mes_demandes(int id_s);
    public Demande consulter(int id);
    
    public Utilisateur getUser(int id);
    
    public List<Demande> reception(int id_s);
    
    public void dicision(String dicision,int id_dem,int id_user) ;
    
    public void delet_user(int id);
    
}