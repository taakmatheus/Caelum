public class ContaPoupanca extends Conta {

    public ContaPoupanca(Cliente titular) {
        super(titular);
        this.saldo = 0.0;
    }

    public override Boolean sacar (Double valor) {
        if(this.saldo >= valor + 0.10) {
            this.saldo -= valor + 0.10;
            System.debug('Saque realizado: ' + valor + '. Taxa de 0.10 centavos aplicada.');
            return true;
        } else {
            throw new SaldoInsuficienteException('Saque falhou: saldo insuficiente.');
        }
    }

    public override void depositar (Double valor) {
        if(valor < 0) {
            throw new IllegalArgumentException('Valor de depósito inválido!');
        }
        this.saldo += valor;
        System.debug('Depósito realizado: ' + valor + '. Sem taxa aplicada.');
    }
}
