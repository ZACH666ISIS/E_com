package Metier;

import java.util.ArrayList;
import java.util.List;

public class command {
	private int idCmd;
	private int idClient;
	private List<panier> p =new ArrayList();
	private boolean etat;
    private int qtecmd;
	public boolean getEtat() {
		return etat;
	}
	public int getIdCmd() {
		return idCmd;
	}
	public void setId(int idCmd) {
		this.idCmd=idCmd;
	}
	public int getIdClient() {
		return idClient;
	}
	public void setEtat(boolean  etat) {
		this.etat=etat;
	}
	public void setIdClient(int idClient) {
		this.idClient=idClient;
	}
	public int getQtecmd() {
		return qtecmd;
	}
	public void setQtecmd(int qtecmd) {
		this.qtecmd=qtecmd;
	}
}
