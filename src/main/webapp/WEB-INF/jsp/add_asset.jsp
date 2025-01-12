<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Asset</title>
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
            <h2>Add a New Asset</h2>
            <form action="addAssetServlet" method="post">
                <label for="modelName">Model Name:</label>
                <input type="text" id="modelName" name="modelName" required><br>

                <label for="serialNumber">Serial Number:</label>
                <input type="text" id="serialNumber" name="serialNumber" required><br>

                <label for="purchaseDate">Purchase Date:</label>
                <input type="date" id="purchaseDate" name="purchaseDate" required><br>

                <label for="assignedTo">Assigned To (User ID):</label>
                <input type="number" id="assignedTo" name="assignedTo" required><br>

                <label for="status">Status:</label>
                <select id="status" name="status">
                    <option value="Active">Active</option>
                    <option value="In Repair">In Repair</option>
                    <option value="Decommissioned">Decommissioned</option>
                </select><br>

                <label for="type">Type:</label>
                <select id="type" name="type">
                    <option value="Laptop">Laptop</option>
                    <option value="Desktop">Desktop</option>
                    <option value="Printer">Printer</option>
                    <option value="Other">Other</option>
                </select><br>

                <button type="submit">Add Asset</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; <%= java.time.Year.now() %> IT Asset Management System. All rights reserved.</p>
    </footer>
</body>
</html>