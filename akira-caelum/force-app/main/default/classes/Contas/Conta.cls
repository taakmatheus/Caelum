public abstract class Conta{
    private static Integer numeroDeContas = 0;
    public Integer numero { get; private set; }
    public Cliente titular { get; private set; }
    public Double saldo { get; set; }

    public Conta(Cliente titular) {
        Conta.numeroDeContas++;
        this.numero = Conta.numeroDeContas;
        this.titular = titular;
        this.saldo = 0.0;
    }

    public abstract Boolean sacar (Double valor);

    public abstract void depositar (Double valor);

    public void transferir (Double valor, Conta destino) {
        if(this.sacar(valor)) {
            destino.depositar(valor);
        }
    }

    public static Integer ProximoNumero() {
        return Conta.numeroDeContas + 1;
    }
}