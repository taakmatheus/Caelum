public abstract with sharing class Conta {
    protected Integer _numero;
    protected Cliente _titular;
    protected double _saldo;

    public Integer numero { get { return _numero; } set { _numero = value; } }
    public Cliente titular { get { return _titular.nome; } set { _titular.nome = value; } }
    public double saldo { get { return _saldo; } protected set { _saldo = value; } }

    private static integer numeroDeContas = 0;

    public Conta(Integer numero, string titular, double saldo) {
        this.numero = numero;
        this.titular = titular;
        this.saldo = saldo;
        Conta.numeroDeContas++;
    }

    public Conta(){ saldo = 100;
        Conta.numeroDeContas++;
    }


    public abstract bool Saca(double valor);

    public abstract void Deposita(Double valor);

    public virtual void Transfere(Double valor, Conta destino){
        if(saldo >= valor){
            destino.Deposita(valor);
        }

    }

    public integer ProximaConta(){
        return ContaCorrente.totalContas ++;
    }
    





}