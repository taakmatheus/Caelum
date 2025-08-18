public with sharing class TotalizadorDeTributos {
    public Decimal total { get; private set; }

    public TotalizadorDeTributos() {
        this.total = 0;
    }

    public void adiciona(ITributavel t) {
        this.total += t.calculaTributo();
    }
}