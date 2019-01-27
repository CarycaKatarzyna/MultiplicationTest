package src;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;

public class Multiplication1 extends Multiplication {

    private int CorrectAnswerNr;
    private ArrayList<Integer> Answers = new ArrayList();
    
    public Multiplication1(){
        Random generator = new Random();
        CorrectAnswerNr = generator.nextInt(4);
        for(int i=0; i<4; i++){
            if(i != CorrectAnswerNr){
                int tempAns = generator.nextInt(100);
                while(tempAns == correctAnswer){
                    tempAns = generator.nextInt(100);
                }
                Answers.add(tempAns);
            }
            else{
                Answers.add(correctAnswer);
             }
        }
    }
    
    public Collection<Integer> getAnswers(){
        return Answers;
    }
    
    public int getCorrectId(){
        return CorrectAnswerNr;
    }
    
    
}
