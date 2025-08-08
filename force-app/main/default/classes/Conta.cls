public abstract with sharing class Conta {
    public Integer numero;
    public String titular;
    public Double saldo;
    private static Integer numeroDeContas = 0;

    public Conta(String textoNumero, String textoTitular) {
        this.numero = Integer.valueOf(textoNumero);
        this.titular = textoTitular;
        this.saldo = 0.0;
    }

    public Conta(String textoTitular) {
        Conta.numeroDeContas++;
        this.numero = Conta.numeroDeContas;
        this.titular = textoTitular;
        this.saldo = 0.0;
    }

    public static Integer proximoNumero() {
        return Conta.numeroDeContas + 1;
    }

    public abstract void saca(Double valor);
    public abstract void deposita(Double valor);

    public override String toString() {
        return 'titular: ' + this.titular;
    }
}