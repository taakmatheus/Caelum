public with sharing class Form1 {
    private List<Conta> contas;
    private Map<String, Conta> dicionario;

    public Form1() {
        this.contas = new List<Conta>();
        this.dicionario = new Map<String, Conta>();
    }

    public void adicionaConta(Conta conta) {
        this.contas.add(conta);
        this.dicionario.put(conta.titular, conta);
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

    public void botaoBusca(String nomeTitular) {
        Conta conta = this.dicionario.get(nomeTitular);
        if (conta != null) {
            System.debug('Conta encontrada: ' + conta.numero + ', Titular: ' + conta.titular + ', Saldo: ' + conta.saldo);
        } else {
            System.debug('Conta não encontrada para o titular: ' + nomeTitular);
        }
    }
}