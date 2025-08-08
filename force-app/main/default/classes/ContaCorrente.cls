public with sharing class ContaCorrente extends Conta implements Tributavel {
    public ContaCorrente(String textoNumero, String textoTitular) {
        super(textoNumero, textoTitular);
    }

    public ContaCorrente(String textoTitular) {
        super(textoTitular);
    }

    public override void saca(Double valor) {
        if (this.saldo >= valor) {
            this.saldo -= (valor + 0.05); // Conta corrente tem taxa de 0.05
        }
    }

    public override void deposita(Double valor) {
        this.saldo += valor - 0.10; // Conta corrente tem taxa de 0.10
    }

    public double calcularTributos() {
        double imposto = this.saldo * 0.05d;
        this.saldo -= imposto;
        return imposto;
    }
}