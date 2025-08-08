public with sharing class Form1 {
    private Integer numeroDeContas;
    private Conta[] contas;

    public Form1() {
        this.numeroDeContas = 0;
    }

    public void adicionaConta(Conta conta) {
        this.contas[this.numeroDeContas] = conta;
        this.numeroDeContas++;
    }

    public void Form1_Load() {
        this.contas = new Conta[10];

        ContaCorrente c1 = new ContaCorrente('1', 'victor');
        this.adicionaConta(c1);

        ContaCorrente c2 = new ContaCorrente('2', 'mauricio');
        this.adicionaConta(c2);

        ContaPoupanca c3 = new ContaPoupanca('3', 'osni');
        this.adicionaConta(c3);
    }

    public void printContas() {
        for (Integer i = 0; i < this.numeroDeContas; i++) {
            Conta conta = this.contas[i];
            System.debug('Conta: ' + conta.numero + ', Titular: ' + conta.titular + ', Saldo: ' + conta.saldo);
        }
    }
}