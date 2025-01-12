<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT Asset Management System</title>
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
            <h2>Welcome</h2>
            <p>This system helps you manage IT assets, track maintenance, and monitor usage.</p>
        </section>
    </main>

    <footer>
        <p>&copy; <%= java.time.Year.now() %> IT Asset Management System. All rights reserved.</p>
    </footer>
</body>
</html>
