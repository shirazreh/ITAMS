<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, java.util.Map" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maintenance Logs</title>
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
            <h2>Maintenance Logs</h2>

            <form action="filterMaintenanceLogsServlet" method="get">
                <h3>Filter Maintenance Logs</h3>
                <label for="assetID">Asset ID:</label>
                <input type="number" id="assetID" name="assetID"><br>

                <label for="startDate">Start Date:</label>
                <input type="date" id="startDate" name="startDate"><br>

                <label for="endDate">End Date:</label>
                <input type="date" id="endDate" name="endDate"><br>

                <button type="submit">Filter Logs</button>
            </form>

            <h3>Existing Maintenance Logs</h3>
            <table>
                <thead>
                    <tr>
                        <th>Log ID</th>
                        <th>Asset ID</th>
                        <th>Maintenance Date</th>
                        <th>Maintenance Type</th>
                        <th>Notes</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Example of fetching and displaying maintenance logs from the database --%>
                    <% 
                        List<Map<String, String>> logs = (List<Map<String, String>>) request.getAttribute("maintenanceLogs");
                        if (logs != null && !logs.isEmpty()) {
                            for (Map<String, String> log : logs) {
                    %>
                    <tr>
                        <td><%= log.get("LogID") %></td>
                        <td><%= log.get("AssetID") %></td>
                        <td><%= log.get("MaintenanceDate") %></td>
                        <td><%= log.get("MaintenanceType") %></td>
                        <td><%= log.get("Notes") %></td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="5">No maintenance logs found.</td>
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
