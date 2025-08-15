public with sharing class TotalizadorDeTributos {
    public Decimal total { get; private set; }

    public void adiciona(ITributavel t) {
        this.total += t.calculaTributo();
    }
}