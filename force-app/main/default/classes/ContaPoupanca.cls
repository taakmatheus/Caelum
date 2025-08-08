public with sharing class ContaPoupanca extends Conta {
    public ContaPoupanca(String textoNumero, String textoTitular) {
        super(textoNumero, textoTitular);
    }

    public ContaPoupanca(String textoTitular) {
        super(textoTitular);
    }

    public override void saca(double valor) {
        if (this.saldo >= valor) {
            this.saldo -= valor; // Conta poupanca não tem taxa
        }
    }

    public override void deposita(double valor) {
        if (valor < 0.0) {
            throw new IllegalArgumentException('Valor de deposito deve ser positivo');
        }
        this.saldo += valor; // Conta poupanca não tem taxa
    }
}