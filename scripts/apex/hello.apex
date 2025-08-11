// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

Form1 f = new Form1();
f.Form1_Load();
FormCadastroConta formCadastro = new FormCadastroConta(f);
formCadastro.setNumero('1');
formCadastro.setTitular('Titular 1');
formCadastro.botaoCadastro();
formCadastro.setNumero('2');
formCadastro.setTitular('Devedor 2');
formCadastro.botaoCadastro();
f.printContas();
f.botaoBusca('victor');
f.botaoBusca('adriano');