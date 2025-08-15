public with sharing class TotalizadorDeTributos {
    public double total {get; private set;}

    public void adiciona(ITributavel t) {
        this.total += t.calculaTributos();
    }
}