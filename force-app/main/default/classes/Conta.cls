public abstract with sharing class Conta {
    public Cliente titular;
    public Integer numero;
    public Double saldo;

    public Conta(){}

    public Conta(Cliente titular, Integer numero) {
        this.titular = titular;
        this.numero = numero;
        this.saldo = 0.0;
    }

    public abstract void saca(Double valor);

    public abstract void deposita(Double valor);

}