<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usage Logs</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>IT Asset Management System</h1>
        <nav>
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="add">Add Asset</a></li>
                <li><a href="view">View Assets</a></li>
                <li><a href="update">Update Asset</a></li>
                <li><a href="main">Maintenance Logs</a></li>
                <li><a href="use">Usage Logs</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section>
            <h2>Usage Logs</h2>

            <form action="addUsageLogServlet" method="post">
                <h3>Add New Usage Log</h3>
                <label for="assetID">Asset ID:</label>
                <input type="number" id="assetID" name="assetID" required><br>

                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required><br>

                <label for="hoursUsed">Hours Used:</label>
                <input type="number" id="hoursUsed" name="hoursUsed" required><br>

                <button type="submit">Add Usage Log</button>
            </form>

            <form action="addMaintenanceLogServlet" method="post">
                <h3>Add New Maintenance Log</h3>
                <label for="assetID">Asset ID:</label>
                <input type="number" id="assetID" name="assetID" required><br>

                <label for="maintenanceDate">Maintenance Date:</label>
                <input type="date" id="maintenanceDate" name="maintenanceDate" required><br>

                <label for="maintenanceType">Maintenance Type:</label>
                <input type="text" id="maintenanceType" name="maintenanceType" required><br>

                <label for="notes">Notes:</label>
                <textarea id="notes" name="notes"></textarea><br>

                <button type="submit">Add Maintenance Log</button>
            </form>

            <h3>Existing Usage Logs</h3>
            <table>
                <thead>
                    <tr>
                        <th>Log ID</th>
                        <th>Asset ID</th>
                        <th>Date</th>
                        <th>Hours Used</th>
                        <th>Reliability Score</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Example of fetching and displaying usage logs from the database --%>
                    <% 
                        List<Map<String, String>> usageLogs = (List<Map<String, String>>) request.getAttribute("usageLogs");
                        if (usageLogs != null && !usageLogs.isEmpty()) {
                            for (Map<String, String> log : usageLogs) {
                    %>
                    <tr>
                        <td><%= log.get("LogID") %></td>
                        <td><%= log.get("AssetID") %></td>
                        <td><%= log.get("Date") %></td>
                        <td><%= log.get("HoursUsed") %></td>
                        <td><%= log.get("ReliabilityScore") %></td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="5">No usage logs found.</td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </section>
    </main>

    <footer>
        <p>&copy; <%= java.time.Year.now() %> IT Asset Management System. All rights reserved.</p>
    </footer>
</body>
</html>