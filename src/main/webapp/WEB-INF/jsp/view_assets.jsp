<%@ page import="java.util.List, java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Assets</title>
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
            <h2>Asset Inventory</h2>
            <table>
                <thead>
                    <tr>
                        <th>Asset ID</th>
                        <th>Model Name</th>
                        <th>Serial Number</th>
                        <th>Purchase Date</th>
                        <th>Assigned To</th>
                        <th>Status</th>
                        <th>Type</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Example of fetching and displaying assets from the database --%>
                    <% 
                        // Simulated database result set
                        List<Map<String, String>> assets = (List<Map<String, String>>) request.getAttribute("assets");
                        if (assets != null && !assets.isEmpty()) {
                            for (Map<String, String> asset : assets) {
                    %>
                    <tr>
                        <td><%= asset.get("AssetID") %></td>
                        <td><%= asset.get("ModelName") %></td>
                        <td><%= asset.get("SerialNumber") %></td>
                        <td><%= asset.get("PurchaseDate") %></td>
                        <td><%= asset.get("AssignedTo") %></td>
                        <td><%= asset.get("Status") %></td>
                        <td><%= asset.get("Type") %></td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="7">No assets found.</td>
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
