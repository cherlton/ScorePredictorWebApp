<%-- 
    Document   : outcome
    Created on : 20 Mar 2024, 7:54:32 PM
    Author     : MemaniV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Outcome</h1>
        <%
            int predictedTeam1Score = (Integer)request.getAttribute("predictedTeam1Score");
            int predictedTeam2Score = (Integer)request.getAttribute("predictedTeam2Score");
            int actualTeam1Score = (Integer)request.getAttribute("actualTeam1Score");
            int actualTeam2Score = (Integer)request.getAttribute("actualTeam2Score");
            double betAmt = (Double)request.getAttribute("betAmt");
            double amtWon = (Double)request.getAttribute("amtWon");
            String outcome = (String)request.getAttribute("outcome");
            String team1Name = pageContext.getServletContext().getInitParameter("team1_name");
            String team2Name = pageContext.getServletContext().getInitParameter("team2_name");
        %>
        <p>
            Below is the outcome.
        </p>
        <table border="1">
            <th><b>Team no.</b></th>
            <th><b>Team name</b></th>
            <th><b>Predicted score</b></th>
            <th><b>Actual score</b></th>
            <tr>
                <td readonly="">1</td>
                <td readonly=""><%=team1Name%></td>
                <td readonly=""><%=predictedTeam1Score%></td>
                <td readonly=""><%=actualTeam1Score%></td>
            </tr>
            <tr>
                <td readonly="">2</td>
                <td readonly=""><%=team2Name%></td>
                <td readonly=""><%=predictedTeam2Score%></td>
                <td readonly=""><%=actualTeam2Score%></td>
            </tr>
            <tr>
                <table>
                    <tr>
                        <td>Outcome  </td>
                        <td readonly=""><%=outcome%></td>
                    </tr>
                    <tr>
                        <td>Betting amount (R)  </td>
                        <td readonly=""><%=betAmt%></td>
                    </tr>
                    <%
                        if(outcome.equals("Won")){
                            %>
                                <tr>
                                    <td>Amount won(R)  </td>
                                    <td readonly=""><%=amtWon%></td>
                                </tr>
                            <%    
                        }
                    %>
                </table>
            </tr>
        </table>   
        <p>
            Please click <a href="index.html">here</a> to go back to the main page.
        </p>
    </body>
</html>
