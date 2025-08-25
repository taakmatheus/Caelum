public class rockpaperscissors {
public Integer rockPaperScissors(String player1, String player2) {
    string rock = 'rock';
    string paper = 'paper';
    string scissors = 'scissors';

    if(player1 == player2) {return 0;}
    else if(player1 == rock) {
        if(player2 == paper) {return 2;}
        else if(player2 == scissors) {return 1;}
    } else if (player1 == paper) {
        if (player2 == scissors) {return 2;}
        else if (player2 == rock) {return 1;}
    } else if (player1 == scissors) {
        if (player2 == rock) {return 2;}
        else if(player2 == paper) {return 1;}
    }
}
}