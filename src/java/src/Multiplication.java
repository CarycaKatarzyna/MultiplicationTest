package src;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;

public class Multiplication {
    protected int firstNumber;
    protected int secondNumber;
    protected int correctAnswer;
    public Multiplication(){
        Random generator = new Random();
        firstNumber = generator.nextInt(10);
        secondNumber = generator.nextInt(10);
        correctAnswer = firstNumber * secondNumber;
    }
    
    public int getFirst(){
        return firstNumber;
    }
    
    public int getSecond(){
        return secondNumber;
    }
    
    public int getCorrectAnswer(){
        return correctAnswer;
    }
    
    
}
