public with sharing class ContaPoupanca extends Conta implements ITributavel{
    public ContaPoupanca() {

    }

    public ContaPoupanca (Integer numero, string titular, double saldo) {
        super(numero, titular, saldo);
    }

    public override void Saca(Double valor){
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

    public Double CalcularTributo(){
        return this.saldo * 0.02;
    }

    public void CalcularRendimento(){

    }


}