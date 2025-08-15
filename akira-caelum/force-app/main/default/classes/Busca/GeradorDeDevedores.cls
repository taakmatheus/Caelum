public class GeradorDeDevedores {
    public Set<String> GeraList() {
        Set<String> nomes = new Set<String>();
        for(Integer i = 0; i < 30000; i++) {
            nomes.add('Devedor ' + i);
        }
        return nomes;
    }
}