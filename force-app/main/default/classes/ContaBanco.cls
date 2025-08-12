public abstract class ContaBanco {
    public String titular;
    public Integer numero;
    public double saldo;
    public integer totaldeContas;
    private static integer numeroDeContas = 0;
    private List<Conta> contas = new List<Conta>();
    
   List<string> devedores = new List<string>();
    
   public ContaBanco(){
    devedores.add('mauricio');
    devedores.add('Maria');
    devedores.add('Elena');
    devedores.add('victor');
    devedores.add('Ettore');
   }
    public virtual void saca(double valor){
        
    }
    
    public ContaBanco(){
        ContaBanco.numeroDeContas++;
        this.numero = ContaBanco.numeroDeContas;
    }

    public void AdicionarConta(Conta conta){
        contas.add(conta);
    }

    public void deposito (double valor){
        this.saldo += valor;
    }
    
    
}