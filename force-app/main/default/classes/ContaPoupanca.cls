public with sharing class ContaPoupanca extends Conta implements Tributavel{
    public ContaPoupanca() {
    }
    public ContaPoupanca(Cliente titular){
        this.titular = titular;
        this.saldo = 0.0;
    }
    
    public override void saca(Double valor){
        if(valor<0.0){
            throw new System.IllegalArgumentException('Valor insuficiente!');
        }
        else if(valor>this.saldo){
            throw new SaldoInsuficienteException('Valor maior que o saldo!');
        }
        else{
            this.saldo -=valor;
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
        return this.saldo * 0.02;
    }
} 