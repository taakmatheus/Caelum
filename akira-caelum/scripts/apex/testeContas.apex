Cliente akira = new Cliente('Akira', '123.456.789-00', '12.345.678-9', 'Rua A, 123', 30);
Cliente pedro = new Cliente('Pedro', '987.654.321-00', '98.765.432-1', 'Avenida B, 456', 25);

List<Conta> listaDeContas = new List<Conta>();
listaDeContas.add(new ContaCorrente(akira));
listaDeContas.add(new ContaPoupanca(pedro));

System.debug(listaDeContas);