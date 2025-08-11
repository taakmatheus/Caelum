// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

Form1 f = new Form1();
String str = 'Texto de teste para busca de palavra';
f.buscaEmTexto(str, 'teste');
f.buscaEmTexto(str, 'k');

f.buscaESubstitui(str, 'palavra', 'nome');
f.capitaliza(str);