public class ContaCorrente extends Conta implements ITributavel {
    public ContaCorrente(Cliente titular) {
        super(titular);
        this.saldo = 0.0;
    }

    public override Boolean sacar (Double valor) {
        // taxa de 0.05 centavos para saque
        if(this.saldo >= valor + 0.05) {
            this.saldo -= valor + 0.05;
            System.debug('Saque realizado: ' + valor + '. Taxa de 0.05 centavos aplicada.');
            return true;
        } else {
            throw new SaldoInsuficienteException('Saque falhou: saldo insuficiente.');
        }
    }

    public override void depositar (Double valor) {
        if(valor < 0) {
            throw new IllegalArgumentException('Valor de depósito inválido!');
        }
        // taxa de 0.10 centavos para depósito
        this.saldo += valor - 0.10;
        System.debug('Depósito realizado: ' + valor + '. Taxa de 0.10 centavos aplicada.');
    }

    public Double calculaTributos() {
        Double imposto = this.saldo * 0.05; // 5% de imposto sobre o saldo
        this.saldo -= imposto; // Deduz o imposto do saldo
        System.debug('Cálculo de tributos: ' + imposto);
        System.debug('Saldo após dedução do imposto: ' + this.saldo);
        return imposto;
    }
}