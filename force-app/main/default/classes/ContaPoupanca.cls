public with sharing class ContaPoupanca extends Conta implements ITributavel {
    public ContaPoupanca(Integer numero, Cliente titular) {
        super(numero, titular);
    }

    public override void saca(Decimal valor){
        this.saldo -= valor;
    }

    public override void deposita(Decimal valor){
        this.saldo += valor;
    }

    public Decimal calculaTributo() {
        return this.saldo * 0.02;
    }
}