public with sharing class ContaInvestimento  extends Conta implements Tributavel{
    public ContaInvestimento() {
    }
    public ContaInvestimento(Cliente titular) {
        this.titular = titular;
    }

    public override void saca(Double valor){
        if(valor<0.0){
            throw new System.IllegalArgumentException('Valor insuficiente!');
        }
         else if((valor+0.10)>this.saldo){
            throw new SaldoInsuficienteException('Valor maior que o saldo!');
        }
        else{
            this.saldo -=(valor + 0.10);
        }
    }
    
    public override void deposita(Double valor){
         if(valor<0.0){
            throw new IllegalArgumentException('Valor insuficiente!');
        }else{
            this.saldo +=valor;
        }
    }

    public double calculaTributo() {
        return this.saldo * 0.03;
    }
}