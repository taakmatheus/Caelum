public virtual with sharing class Conta {
    public String Nconta = '';
    public Decimal saldo= 0;
    public Conta(){}
    public Conta(String Nconta,Decimal saldo) {
        this.Nconta = Nconta;
        this.saldo = saldo;
    }
    public virtual Decimal Saque (Decimal valor){
        this.saldo -= valor;
        return this.saldo;
    }
    public virtual Decimal Deposito(Decimal valor){
        this.saldo += valor;
        return this.saldo;
    }

}