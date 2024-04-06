/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.BettingInterface;
import za.ac.tut.model.BettingManager;

/**
 *
 * @author MemaniV
 */
public class PredictionServlet extends HttpServlet {
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int predictedTeam1Score = Integer.parseInt(request.getParameter("predicted_team1_score"));
        int predictedTeam2Score = Integer.parseInt(request.getParameter("predicted_team2_score"));
        double betAmt = Double.parseDouble(request.getParameter("bet_amt"));
        
        System.out.println("Predicted Team 1 score: " + predictedTeam1Score);
        System.out.println("Predicted Team 2 score: " + predictedTeam2Score);
        System.out.println("Betting amount: " + betAmt);
        
        BettingInterface bi = new BettingManager();
        int actualTeam1Score = bi.getActualScore();
        int actualTeam2Score = bi.getActualScore();
        String outcome = bi.determineOutcome(predictedTeam1Score, predictedTeam2Score, actualTeam1Score, actualTeam2Score);
        double amtWon = bi.determineAmountWon(outcome, betAmt);
        
        request.setAttribute("predictedTeam1Score", predictedTeam1Score);
        request.setAttribute("predictedTeam2Score", predictedTeam2Score);
        request.setAttribute("actualTeam1Score", actualTeam1Score);
        request.setAttribute("actualTeam2Score", actualTeam2Score);
        request.setAttribute("betAmt", betAmt);
        request.setAttribute("outcome", outcome);
        request.setAttribute("amtWon", amtWon);
        
        RequestDispatcher disp = request.getRequestDispatcher("outcome.jsp");
        disp.forward(request, response);
    }
}
