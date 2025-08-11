public with sharing class FormCadastroConta {
    private String textoNumero;
    private String textoTitular;
    private Form1 formPrincipal;
    
    public FormCadastroConta(Form1 formPrincipal) {
        this.formPrincipal = formPrincipal;
    }

    public void setNumero(String numero) {
        this.textoNumero = numero;
    }

    public void setTitular(String titular) {
        this.textoTitular = titular;
    }

    public void botaoCadastro() {
        ContaCorrente ct = new ContaCorrente(this.textoNumero, this.textoTitular);
        this.formPrincipal.adicionaConta(ct);
    }
}