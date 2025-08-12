public with sharing class ContaCorrente extends Conta implements Tributavel{


    public ContaCorrente() {
    }
    public ContaCorrente(Cliente titular, Integer numero){
    }
    public override void saca(Double valor){
        this.saldo -=(valor + 0.10);
    }
    
    public override void deposita(Double valor){
        this.saldo += valor;
    }
    public Double calculaTributo() {
        return this.saldo * 0.05;
    }

    public static Integer proximaConta(){
        return Conta.numeroDeContas + 1;
    }
}