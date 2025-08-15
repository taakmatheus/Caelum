Cliente cliente = new Cliente('exemplo', '123.456.789-00', '12.345.678-9', 'Rua A, 123', 30);
ContaCorrente conta = new ContaCorrente(222, cliente);
conta.depositar(200);
conta.CalculaTributos();

SeguroDeVida sv = new SeguroDeVida();
sv.CalculaTributos();

// TotalizadorDeTributos totalizador = new TotalizadorDeTributos();
// totalizador.adiciona(conta);
// System.debug('totalizador após conta: ' + totalizador);