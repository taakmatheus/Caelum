public class ContaCorrente extends ContaBanco {
  private static integer totalDeContas = 0;
    
  
public override void sacar(double valor){
        this.saldo -= (valor + 0.10);
    }
    
    public void botaoCadastro_Click(String titular, Integer numero, Integer saldo){
        ContaCorrente novaConta = new ContaCorrente();
        novaConta.titular = titular;
        novaConta.numero = numero;
        novaConta.saldo = saldo;
        Account acct = new Account();
        acct.name = titular;
        acct.AccountNumber = String.valueOf(numero);
        acct.SaldoConta__c = saldo;
		insert acct;
        
    }
    
    public double CalcularTributo(double saldo){
        return this.saldo * 0.05;
    }
    public contaCorrente(){
        ContaCorrente.totaldeContas++;
    }
    
    public static integer ProximaConta(){
        return ContaCorrente.totalDeContas + 1;
    }
    
   
     
}