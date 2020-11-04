package com.octest.beans;

public class Utilisateur {
	
    private int id;
	private String nom;
    private String prenom;
    private String code;
    private String mat;
    private String fonction;
    private String equipe;
    private String username;
    private String password;
    
    
    
    public Utilisateur(String nom, String prenom, String code, String mat, String fonction, String equipe, String username,String password) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.code = code;
		this.mat = mat;
		this.fonction = fonction;
		this.equipe = equipe;
		this.username = username;
		this.password = password;
	}
    
    
	public Utilisateur() {
		super();
	}


	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMat() {
		return mat;
	}
	public void setMat(String mat) {
		this.mat = mat;
	}
	
	public String getFonction() {
		return fonction;
	}
	public void setFonction(String fonction) {
		this.fonction = fonction;
	}
	
	public String getEquipe() {
		return equipe;
	}

	public void setEquipe(String equipe) {
		this.equipe = equipe;
	}


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    

}