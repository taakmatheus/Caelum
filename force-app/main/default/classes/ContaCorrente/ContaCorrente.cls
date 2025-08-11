public with sharing class ContaCorrente extends Conta {

    public override bool Saca(Double valor){
       //taxa
        valor += 0.05;

        if(saldo >= valor){
            saldo -= valor;
            return true;
        }
        return false;
    }

    public override void Deposita(Double valor){
        saldo += valor - 0.1;
    }
}