// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor 

List<Conta> contas = new List<Conta>();
Cliente diogo = new Cliente('diogo', 'cpfexemplo', 'rg ememplo', 'rua 123');
ContaCorrente contaDiogo = new ContaCorrente(diogo);
contas.add(contaDiogo);


Cliente teste = new Cliente('teste', 'cpfTeste', 'rgTeste', 'ruaTeste');
ContaCorrente contaTeste = new ContaCorrente(teste);
contas.add(contaTeste);

Cliente john = new Cliente('john', 'cpfjohn', 'rgTeste', 'ruaTeste');
ContaPoupanca contaJohn = new ContaPoupanca(John);
contas.add(contaJohn);

try{
    contaJohn.extrato();
}
catch(Exception e) {
    System.debug(e.getMessage());
}


Set<String> devedores = new Set<String>();
devedores.Add('victor');
devedores.Add('maria');

Boolean devedor = devedores.Contains(contaJohn.titular.getNome());
System.debug(devedor.ToString());