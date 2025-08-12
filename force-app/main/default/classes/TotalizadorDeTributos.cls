public with sharing class TotalizadorDeTributos {

    public Double total = 0.0;

    public TotalizadorDeTributos() {

    }
    public void acumula(Tributavel t) {
        total += t.calculaTributo();
    }
}