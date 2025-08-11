public with sharing class GeradorDeDevedores {
    public GeradorDeDevedores() {}

    public Set<String> geraList() {
        Set<String> nomes = new Set<String>();
        for (Integer i = 0; i < 10; i++) {
            nomes.add('Devedor ' + i);
        }
        return nomes;
    }
}