// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

Cliente cliente = new Cliente('Fernando');
ContaCorrente conta = new ContaCorrente(cliente, 1);
conta.deposita(200.00d);
System.debug(conta.saldo);
conta.saca(50.00d);
TotalizadorDeTributos total = new TotalizadorDeTributos();
total.acumula(conta);
System.debug(total.Total);

