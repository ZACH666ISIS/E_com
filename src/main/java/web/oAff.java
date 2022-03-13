package web;
import java.util.ArrayList;
import java.util.List;

import Metier.*;

public class oAff {
	private produit p = new produit();

	   public void setp(produit p) {
		   this.p=p;
	   }

	   public produit getp() {
		   return p;
	   }
}
