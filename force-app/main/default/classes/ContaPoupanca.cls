public with sharing class ContaPoupanca extends Conta {
    public ContaPoupanca(){
        super();
    }
    public ContaPoupanca(String nConta,Decimal saldo){
        super(nConta,saldo);
    }
    public override Decimal saque(Decimal valor){
        this.saldo -= (valor+0.1);
        return this.saldo;
    }
    public Decimal calculaRendimento(){
        return this.saldo*0.05;
    }
}