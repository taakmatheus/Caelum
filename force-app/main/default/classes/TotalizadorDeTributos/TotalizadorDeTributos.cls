public with sharing class TotalizadorDeTributos {
    
    private double _total;

    public double total {get {_total;} private set {_total = value;}}
    
    public TotalizadorDeTributos() {
        
    }

    public void Acumula(ITributavel conta){
        total += conta.CalcularTributo();
    }




    
}