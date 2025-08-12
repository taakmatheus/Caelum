public with sharing class FormCadastroConta {
    private Conta[] contas;
    private Integer numeroDeContas;

    public FormCadastroConta() {
    }
    public void adicionaConta(Conta conta) {
        this.contas[this.numeroDeContas] = conta;
        this.numeroDeContas++;
    }

}