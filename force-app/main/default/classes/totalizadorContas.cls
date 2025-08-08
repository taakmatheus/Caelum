public with sharing class totalizadorContas {
    public Decimal valorTotalContas = 0;
    public Decimal valorTotalRendimento = 0;
    public Decimal valorTotalTributos = 0;
    public totalizadorContas(Conta[] contas ) {
        if (contas == null){
            System.debug('sem contas');
        }
        else{
            for (Conta nConta:contas){
                this.valorTotalContas += nConta.saldo;
                if (nConta instanceOf IcalculaTributo){
                    
                    
                    this.valorTotalTributos += ((IcalculaTributo)nConta).calculaTributo();

                }
                if (nConta instanceOf IcalculaRendimento){
                    this.valorTotalRendimento += ((IcalculaRendimento)nConta).calculaRendimento();
                }
            }
            
        }
    }

}