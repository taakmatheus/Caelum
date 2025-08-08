public abstract class Conta {
    //atributos da classe
    public integer numero{get; set;}
    public Cliente titular {get; set;}
    public double saldo {get; private set;}

    //Construtores da classe
    public Conta(integer numero, Cliente titular){
        this.numero = numero;
        this.titular = titular;
        this.saldo = 100;
    }

    public Conta(){}

    //metodos
    //saque de dinheiro
    public virtual Boolean sacar(double valorSaque) {
        if(this.saldo > valorSaque) {          
            this.saldo -= valorSaque;
            return true;
        } else {
            return false;
        }
    }

    //deposito de valor
    public void depositar(double valor) {
        this.saldo += valor;
    }

    //extrato que exibe no debug o valor atual na conta
    public void extrato() {
        System.debug('Titular da conta: ' + this.titular.getNome());
        System.debug('Saldo da conta: ' + this.saldo);
    }

    //transferencia de valores
    public void transferir(double valor, Conta destino) {
        if(this.sacar(valor)) {
            destino.depositar(valor);
            System.debug('Transferencia realizada com sucesso!');
        } else {
            System.debug('Saldo insuficiente!');
        }
    }
}