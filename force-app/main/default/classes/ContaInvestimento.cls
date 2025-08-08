public with sharing class ContaInvestimento extends Conta implements IcalculaRendimento, IcalculaTributo {
    public ContaInvestimento(Decimal saldo) {
        super(saldo);
    }
    public Decimal calculaRendimento(){
        return this.saldo*0.06;
    }
    public Decimal calculaTributo(){
        return this.saldo * 0.03;
    }
}