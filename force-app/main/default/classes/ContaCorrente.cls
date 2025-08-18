public with sharing class ContaCorrente extends Conta implements ITributavel {
    private static Integer totalDeContas = 0;

    public ContaCorrente(Integer numero, Cliente titular) {
        super(numero, titular);
        ContaCorrente.totalDeContas++;
    }

    public override void saca(Decimal valor){
        if(valor  < 0.0){
            throw new IllegalArgumentException();
        }

        if(valor + 0.10 > this.saldo) {
            throw new SaldoInsuficienteException();
        }
        
        this.saldo -= (valor + 0.10);
    }

    public override void deposita(Decimal valor){
        if(valor < 0.0){
            throw new IllegalArgumentException();
        }
        this.saldo += valor;
    }

    public Decimal calculaTributo() {
        return this.saldo * 0.05;
    }

    public static Integer ProximaConta(){
        return ContaCorrente.totalDeContas++;
    }
}