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
    public Boolean Equals(Object outro){
        if (outro instanceOf Conta){
            return this.nConta == ((Conta)outro).nConta;
        }
        return false;
        
    }
    public override String ToString(){
        return 'Conta: ' +this.nConta + 'Saldo: '+this.saldo; 
    }

}