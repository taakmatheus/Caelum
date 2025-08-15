Cliente akira = new Cliente('Akira', '123.456.789-00', '12.345.678-9', 'Rua A, 123', 30);
ContaCorrente contaCorrente = new ContaCorrente(akira);
System.debug(contaCorrente);

contaCorrente.depositar(100);
System.debug('Saldo após depósito: ' + contaCorrente.saldo);
contaCorrente.sacar(40);
System.debug('Saldo após saque: ' + contaCorrente.saldo);
contaCorrente.calculaTributos();
System.debug('Saldo final: ' + contaCorrente.saldo);
