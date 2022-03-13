package web;

import java.util.ArrayList;
import java.util.List;

import Metier.produit;

public class pAff {
private List<produit> p = new ArrayList();

   public void setp(List<produit> p) {
	   this.p=p;
   }

   public List<produit> getp() {
	   return p;
   }
}
