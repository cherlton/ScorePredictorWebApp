<%-- 
    Document   : predict_score
    Created on : 20 Mar 2024, 6:29:47 PM
    Author     : MemaniV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Predict Score Page</title>
    </head>
    <body>
        <h1>Predict score</h1>
        <%
            String computerName = pageContext.getServletContext().getInitParameter("computer_name");
            String team1Name = pageContext.getServletContext().getInitParameter("team1_name");
            String team2Name = pageContext.getServletContext().getInitParameter("team2_name");
        %>
        <p>
            Hello, my name is <b><%=computerName%></b>. Please enter betting information below.
        </p>
        <form action="PredictionServlet.do" method="POST">
            <table border="1">
                <th><b>Team no.</b></th>
                <th><b>Team name</b></th>
                <th><b>Predicted score</b></th>
                <tr>
                    <td readonly="">1</td>
                    <td readonly=""><%=team1Name%></td>
                    <td><input type="text" name="predicted_team1_score"/></td>
                </tr>
                <tr>
                    <td readonly="">2</td>
                    <td readonly=""><%=team2Name%></td>
                    <td><input type="text" name="predicted_team2_score"/></td>
                </tr>
                <tr>
                    <table>
                        <tr>
                            <td>Betting amount (R)  </td>
                        </tr>
                        <tr>
                            <td><input type="text" name="bet_amt" required=""/></td>
                        </tr>
                    </table>
                </tr>
                <tr>
                    <td><input type="submit" value="CHECK PREDICTION"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
