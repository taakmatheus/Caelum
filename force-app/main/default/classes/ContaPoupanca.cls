public with sharing class ContaPoupanca extends Conta implements Tributavel{
    public ContaPoupanca() {
        Conta.numeroDeContas++;
        this.numero = Conta.numeroDeContas;
    }
    public ContaPoupanca(Cliente titular, Integer numero){
        this.titular = titular;
        this.saldo = 0.0;
        Conta.numeroDeContas++;
        this.numero = Conta.numeroDeContas;
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
    public static Integer proximaConta(){
        return Conta.numeroDeContas + 1;
    }
}