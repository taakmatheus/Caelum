// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

ContaPoupanca c = new ContaPoupanca('1', 'Adriano');
c.deposita(100.00d);
System.debug(c.toString());
try {
    c.deposita(10.00d);
    System.debug(c.saldo);
} catch (IllegalArgumentException e) {
    System.debug(e.getMessage());
}
