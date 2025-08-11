public with sharing class ContaInvestimento extends Conta implements ITributavel {
    public ContaInvestimento() {

    }

    public ContaInvestimento(Integer numero, string titular, double saldo) {
        super(numero, titular, saldo);
    }

    public Double CalcularTributo(){
        return this.saldo * 0.03;
    }

    public override bool Saca(Double valor){
        if (valor + 0.10 <= this.Saldo)
        {
            this.Saldo -= valor + 0.10;
            return true;
        }
        else
        {
            throw new SaldoInsuficienteException();
            return false;
        }    
    }

    public override void Deposita(Double valor){
        if(valor < 0){
            throw new ArgumentException('Valor de depósito não pode ser negativo.');
        }
        this.saldo += valor;
    }

}