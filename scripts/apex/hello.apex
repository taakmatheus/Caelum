// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents


List<Conta> contas = new List<Conta>();
Cliente diogo = new Cliente('diogo', 'cpfexemplo', 'rg ememplo', 'rua 123');
ContaCorrente contaDiogo = new ContaCorrente(1, diogo);
contas.add(contaDiogo);

Cliente teste = new Cliente('teste', 'cpfTeste', 'rgTeste', 'ruaTeste');
ContaCorrente contaTeste = new ContaCorrente(2, teste);
contas.add(contaTeste);

Cliente john = new Cliente('john', 'cpfjohn', 'rgTeste', 'ruaTeste');
ContaPoupanca contaJohn = new ContaPoupanca(3, John);
contas.add(contaJohn);

contaDiogo.transferir(10000, contaTeste);
contaTeste.extrato();






