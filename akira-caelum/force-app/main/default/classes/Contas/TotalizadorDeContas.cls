public class TotalizadorDeContas {
    public Double saldoTotal {get; private set;}

    public Boolean adicionarConta(Conta conta) {
        if (conta != null) {
            saldoTotal += conta.saldo;
            System.debug('Conta adicionada. Saldo total atualizado: ' + saldoTotal);
            return true;
        } else {
            System.debug('Conta inválida. Não foi possível adicionar.');
            return false;
        }
    }

}