// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

ContaCorrente c1 = new ContaCorrente('Alberto');
ContaCorrente c2 = new ContaCorrente('Bruna');
ContaCorrente c3 = new ContaCorrente('Carlos');
System.debug(c1.numero);
System.debug(c2.numero);
System.debug(c3.numero);
System.debug(Conta.proximoNumero());