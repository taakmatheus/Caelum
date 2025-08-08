public with sharing class ContaCorrente extends Conta{
    private static Integer nContaCorrente = 0;
    public ContaCorrente(Decimal saldo) {
       super(saldo);
       nContaCorrente++;
    }
    public static Integer proximaConta(){
        return nContaCorrente++;
    }
    

}