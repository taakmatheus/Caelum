public abstract with sharing class Conta {
    private Integer numero;
    private Cliente titular;
    protected Decimal saldo;
    private static Integer numeroDeContas = 0;

    public Conta(){
        Conta.numeroDeContas++;
        this.numero = Conta.numeroDeContas;
    }

    public Conta(Integer numero, Cliente titular) {
        this.numero = numero;
        this.titular = titular;
        this.saldo = 0.0;
    }

    public abstract void saca(Decimal valor);

    public abstract void deposita(Decimal valor);

    public Decimal getSaldo() {
        return this.saldo;
    }

    public Cliente getTitular() {
        return this.titular;
    }

    public Integer getNumero() {
        return this.numero;
    }

    public static Integer proximoNumero() {
        return Conta.numeroDeContas + 1;
    }

    public Boolean equals(Object obj){
        if (!(obj instanceof Conta)) {
            return false;
        }
        Conta outraConta = (Conta)obj;
        return this.numero == outraConta.numero;
        // return this.numero == ((Conta)obj).numero;
    }

    public override String toString() {
        return 'titular: ' + this.titular.getNome();
    }
}