public with sharing class ContaInvestimento extends Conta implements ITributavel {
    public ContaInvestimento(Integer numero, Cliente titular) {
        super(numero, titular);
    }

    public override void saca(Decimal valor){
        if(valor  < 0.0){
            throw new IllegalArgumentException();
        }

        if(valor > this.saldo) {
            throw new SaldoInsuficienteException();
        }
        this.saldo -= valor;
    }

    public override void deposita(Decimal valor){
        if(valor < 0.0){
            throw new IllegalArgumentException();
        }
        
        this.saldo += valor;
    }

    public Decimal calculaTributo() {
        return this.saldo * 0.03;
    }
}