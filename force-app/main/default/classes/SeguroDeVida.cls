public with sharing class SeguroDeVida implements Tributavel {
    public Double saldo;
    public SeguroDeVida() {

    }
    public seguroDeVida(Double saldo) {
        this.saldo = saldo;
    }


    public Double calculaTributo() {
        return 42.00;
    }


}