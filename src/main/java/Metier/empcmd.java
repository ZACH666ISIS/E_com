package Metier;

public class empcmd {
	private int idCmd;
	private int idClient;
	private String cin;
	private String adrs;
	private int etat;
	public String getcin() {
		return cin;
	}	
    public String getadrs() {
		return adrs;
	}
    public void setadrs(String adrs) {
    	this.adrs=adrs;
    }
    public void setcin(String cin) {
    	this.cin=cin;
    }
	public int getEtat() {
		return etat;
	}
	public int getIdCmd() {
		return idCmd;
	}
	public void setId(int idCmd) {
		this.idCmd=idCmd;
	}
	public int getidClient() {
		return idClient;
	}
	public void setEtat(int  etat) {
		this.etat=etat;
	}
	public void setIdClient(int idClient) {
		this.idClient=idClient;
	}

}
