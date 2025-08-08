public virtual with sharing class Conta {
    public Decimal nConta;
    public Decimal saldo;
    
    public Conta(Decimal saldo) {
        
        this.nConta = nConta;
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