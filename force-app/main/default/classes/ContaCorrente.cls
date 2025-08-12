public with sharing class ContaCorrente extends Conta implements Tributavel{
    public ContaCorrente() {

    }
    public ContaCorrente(Cliente titular, Integer numero){
        this.titular = titular;
        this.numero = numero;
        this.saldo = 0.0;
    }
    public override void saca(Double valor){
        this.saldo -=(valor + 0.10);
    }
    
    public override void deposita(Double valor){
        this.saldo += valor;
    }
    public Double calculaTributo() {
        return this.saldo * 0.05;
    }
}