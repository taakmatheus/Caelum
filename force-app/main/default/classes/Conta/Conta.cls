public abstract with sharing class Conta {
    protected int _numero;
    protected Cliente _titular;
    protected double _saldo;

    public int numero { get { return _numero; } set { _numero = value; } }
    public string titular { get { return _titular.nome; } set { _titular.nome = value; } }
    public double saldo { get { return _saldo; } protected set { _saldo = value; } }


    public Conta(int numero, string titular, double saldo) {
        this.numero = numero;
        this.titular = titular;
        this.saldo = saldo;
    }

    public Conta(){ saldo = 100;}



    public bool Saca(double valor){
        if(saldo >= valor){
            saldo -= valor;
            return true;
        }
        return false;
    }
    public void Deposita(Double valor){
        saldo += valor;
    }

    public void Transfere(Double valor, Conta destino){
        if(this.Saca(valor)){
            destino.Deposita(valor);
        }

    }





}