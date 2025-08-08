//Classe que retorna o valor total do saldo de todas as contas
public class TotalizadorDeContas {
    public double ValorTotal {get; private set;}

    public double TotalizadorDeContas(List<Conta> contas) {
      for(Conta conta : contas) {
          this.ValorTotal += conta.saldo;
      }

      return this.ValorTotal;
    }
}