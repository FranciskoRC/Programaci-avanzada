package index;

/**
 *Aquesta clase calcula l'index de massa corporal d'un individu
 * @author paco
 */
public class imc {
    
    //Atributs
    private double pes;
    private double alsada;

    public imc(double pes, double alsada) {
        this.pes = pes;
        this.alsada = alsada;
    }

    public double getPes() {
        return pes;
    }

    public double getAlsada() {
        return alsada;
    }

    public void setPes(double pes) {
        this.pes = pes;
    }

    public void setAlsada(double alsada) {
        this.alsada = alsada;
    }
    
    public double calculaImc(){
        return this.pes/Math.pow(alsada, 2);
    }
    
    public String comEstas(){
        String informe="";
        if(this.calculaImc()<18) informe = "Estas prim";
        if(this.calculaImc()>=18 && this.calculaImc()<=25)  informe ="Figurin";
        if(this.calculaImc() >25)  informe ="Tens sobrepes"; 
        
        return informe;
    }

}
