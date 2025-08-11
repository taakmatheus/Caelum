public with sharing class TotalizadorDeContas {
    
    private double _valorTotal;
    public Double saldoTotal;

    public double valorTotal {get {_valorTotal;} private set {_valorTotal = value;}}
    public Double saldoTotal {get {return valorTotal;} set {valorTotal = value;}}

    public TotalizadorDeContas() {

    }

    public void Soma(Conta conta){
        valorTotal += conta.saldo;
    }
    public void Soma(ContaPoupanca conta){
        valorTotal += conta.saldo;
    }
    public void Soma(ContaCorrente conta){
        valorTotal += conta.saldo;
    }

    public void Adiciona(Conta conta){
        saldoTotal += conta.saldo;
    }
}