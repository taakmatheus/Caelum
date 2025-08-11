public with sharing class Form1 {
    private List<Conta> contas;

    public Form1() {
        this.contas = new List<Conta>();
    }

    public void adicionaConta(Conta conta) {
        this.contas.add(conta);
    }

    public void Form1_Load() {
        this.contas = new List<Conta>();

        ContaCorrente c1 = new ContaCorrente('1', 'victor');
        this.adicionaConta(c1);

        ContaCorrente c2 = new ContaCorrente('2', 'mauricio');
        this.adicionaConta(c2);

        ContaPoupanca c3 = new ContaPoupanca('3', 'osni');
        this.adicionaConta(c3);
    }

    public void printContas() {
        for (Conta conta : this.contas) {
            System.debug('Conta: ' + conta.numero + ', Titular: ' + conta.titular + ', Saldo: ' + conta.saldo);
        }
    }
}