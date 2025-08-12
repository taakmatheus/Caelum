public abstract with sharing class Conta {
    public Cliente titular;
    public Integer numero;
    public Double saldo;
    public static Integer numeroDeContas = 0;

    public Conta(){
        numeroDeContas++;
        this.numero = numeroDeContas;
    }

    public Conta(Cliente titular) {
        this.titular = titular;
        this.saldo = 0.0;
        numeroDeContas++;
        this.numero = numeroDeContas;
    }

    public abstract void saca(Double valor);

    public abstract void deposita(Double valor);

     public static Integer proximaConta(){
        return numeroDeContas + 1;
    }

}