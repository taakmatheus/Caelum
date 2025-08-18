public class GeradorDeDevedores {
    public static Set<String> geraDevedores(){
        Set<String> devedores = new Set<String>();
        for(integer i = 0; i < 30000; i++){
            devedores.add('Devedor ' + i);
        }
        return devedores;
    }
}