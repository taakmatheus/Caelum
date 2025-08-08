public class ContaPoupanca extends Conta implements ITributavel  {
    public double saldo {get; private set;}
    
    public ContaPoupanca( Cliente titular) {
        super(titular);
    }
    //substituindo o saque colocando a taxa de 10 centavos
    public override boolean sacar(double valorSaque) {
       
            if(this.saldo > valorSaque) {          
                this.saldo -= (valorSaque += 0.10);
                return true;
            } else {  
                throw new BaseException('Nao foi possivel concluir o saque, valor na conta insuficiente');   
                return false; 
            }
        }

    //Aplicando tratamaneto de erros para o deposito na poupanca
    public override void depositar(double valor) {
        if(valor < 0) {
            throw new BaseException('Valor inserido é menor que 0');
        } 
        else{
            this.saldo += valor;
        }
        
    }
    
    
    public double calculaTributo() {
        return this.saldo * 0.03;
    }
}
