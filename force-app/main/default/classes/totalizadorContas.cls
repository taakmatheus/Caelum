public with sharing class totalizadorContas {
    public Decimal valorTotalContas = 0;
    public Decimal valorTotalProxMes = 0;
    public totalizadorContas(Conta[] contas ) {
        if (contas == null){
            System.debug('sem contas');
        }
        else{
            for (Conta nConta:contas){
                this.valorTotalContas += nConta.saldo;
                if (nConta instanceOf ContaPoupanca){
                    ContaPoupanca nPoupanca = (ContaPoupanca)nConta;
                    this.valorTotalProxMes += nPoupanca.calculaRendimento();

                }
            }
            this.valorTotalProxMes += this.valorTotalContas;
        }
    }

}