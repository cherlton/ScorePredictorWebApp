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
public interface BettingInterface {
    int getActualScore();
    String determineOutcome(int predictedTeam1Score, int predictedTeam2Score, int actualTeam1Score, int actualTeam2Score);
    double determineAmountWon(String outcome, double betAmt);
}
