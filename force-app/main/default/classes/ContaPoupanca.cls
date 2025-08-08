public with sharing class ContaPoupanca extends Conta implements IcalculaRendimento, IcalculaTributo {
    public ContaPoupanca(Decimal saldo){
        super(saldo);
    }
    public override Decimal saque(Decimal valor){
        
        
        
        try{
            this.saldo -= (valor+0.1);
            return this.saldo;
        }
        catch(Exception e){
            throw e;
        }
        
        
        
    }
    public Decimal calculaRendimento(){
        return this.saldo*0.05;
    }
    public Decimal calculaTributo(){
        return this.saldo*0.02;
    }
}