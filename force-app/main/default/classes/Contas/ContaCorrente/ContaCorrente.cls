public with sharing class ContaCorrente extends Conta implements ITributavel {


    public ContaCorrente(Integer numero, string titular, double saldo) {
        super(numero, titular, saldo);
    }

    public override Boolean Saca(Double valor){
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
        saldo += valor - 0.1;
    }

    public double CalcularTributo(){
        return this.saldo * 0.05;
    }



}