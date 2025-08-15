Cliente akira = new Cliente('Akira', '123.456.789-00', '12.345.678-9', 'Rua A, 123', 30);
ContaPoupanca contaPoupanca = new ContaPoupanca(akira);
System.debug(contaPoupanca);

contaPoupanca.depositar(100);
System.debug('Saldo após depósito: ' + contaPoupanca.saldo);
contaPoupanca.sacar(40);
System.debug('Saldo após saque: ' + contaPoupanca.saldo);
try {
    contaPoupanca.depositar(-200);
} catch (Exception e) {
    System.debug('Erro ao depositar: ' + e.getMessage());
}
try {
    contaPoupanca.sacar(1000);
} catch (Exception e) {
    System.debug('Erro ao sacar: ' + e.getMessage());
}