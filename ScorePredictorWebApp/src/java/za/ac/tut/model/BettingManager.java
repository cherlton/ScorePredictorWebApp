/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model;

/**
 *
 * @author MemaniV
 */
public class BettingManager implements BettingInterface {

    @Override
    public int getActualScore() {
        int score;
        
        score = (int)Math.floor(Math.random()*6);
        
        return score;
    }

    @Override
    public String determineOutcome(int predictedTeam1Score, int predictedTeam2Score, int actualTeam1Score, int actualTeam2Score) {
        String outcome = "Lost";
        
        if((predictedTeam1Score == actualTeam1Score) && (predictedTeam2Score == actualTeam2Score)){
            outcome = "Won";
        }
        
        return outcome;
    }

    @Override
    public double determineAmountWon(String outcome, double betAmt) {
        double amtWon = 0;
        
        if(outcome.equals("Won")){
            amtWon = betAmt * 10;                        
        }
        
        return amtWon;
    }
    
}
