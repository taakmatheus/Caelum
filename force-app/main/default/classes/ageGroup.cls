public class ageGroup {
    public String ageGroup(Integer n) {
    string test;

    if(n < 1) test = 'infant';
    else if(n > 1 && n <=14) test = 'Child';
    else if(n > 14 && n <= 21) test = 'Youth';
    else test = 'Adult';

    return test;
   
}

public static Boolean companionPlants(String plant1, String plant2) {
    string lettuc = 'lettuce';
    string cucumbers = 'cucumbers';
    string onions = 'onions';
    string carrots = 'carrots';
    string tomatoes = 'tomatoes';

    if(plant1 == lettuc || plant2 == lettuc) {
        if (plant2 == cucumbers || plant1 == cucumbers) return true;
        else if(plant1 = onions) return true;
    } else if (plant1 == onions) {
        if(plant2 == carrots || plant1 == carrots) return true;
        else if( plant1 == tomatoes ) return true;
    } else return false;
}
}