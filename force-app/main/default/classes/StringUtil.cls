public class StringUtil {
    public static String pluralize(String texto) {
        if(texto.endsWithIgnoreCase('s')) {
            return texto;
        }else{
            return texto + 's';
        }
    }
}