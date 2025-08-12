public with sharing class ContaPoupanca extends Conta implements Tributavel{
    public ContaPoupanca() {

    }
    public ContaPoupanca(Cliente titular, Integer numero){
        this.titular = titular;
        this.numero = numero;
        this.saldo = 0.0;
    }
    
    public override void saca(Double valor){
        this.saldo -=valor;
    }

    public override void deposita(Double valor){
        this.saldo += valor;
    }
    public double calculaTributo() {
        return this.saldo * 0.02;
    }
}