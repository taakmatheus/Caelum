public with sharing class FormCadastroConta {
    private String textoNumero;
    private String textoTitular;
    public Set<String> devedores;
    private Form1 formPrincipal;
    
    public FormCadastroConta(Form1 formPrincipal) {
        this.formPrincipal = formPrincipal;
        GeradorDeDevedores gerador = new GeradorDeDevedores();
        this.devedores = gerador.geraList();
    }

    public void setNumero(String numero) {
        this.textoNumero = numero;
    }

    public void setTitular(String titular) {
        this.textoTitular = titular;
    }

    public void botaoCadastro() {
        boolean ehDevedor = this.devedores.contains(this.textoTitular);
        if (ehDevedor) {
            System.debug('Devedor');
        } else {
            ContaCorrente ct = new ContaCorrente(this.textoNumero, this.textoTitular);
            this.formPrincipal.adicionaConta(ct);
        }
    }
}