public with sharing class ContaInvestimento  extends Conta{
    public ContaInvestimento() {
    }
    public ContaInvestimento(Cliente titular) {
        this.titular = titular;
        this.saldo = 0.0;
    }

    public override void saca(Double valor){
        this.saldo -=(valor + 0.10);
    }
    
    public override void deposita(Double valor){
        this.saldo += valor;
    }

    public double calculaTributo() {
        return this.saldo * 0.03;
    }
    public static Integer proximaConta(){
        return Conta.numeroDeContas + 1;
    }
}