<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Asset Status</title>
</head>
<body>
    <h2>Update Asset Status</h2>
    <form action="${pageContext.request.contextPath}/assets/update" method="post">
        <input type="hidden" name="id" value="${asset.id}" />

        <p>
            <label>Asset Name:</label>
            <input type="text" value="${asset.name}" disabled />
        </p>

        <p>
            <label>Current Status:</label>
            <input type="text" value="${asset.status}" disabled />
        </p>

        <p>
            <label>New Status:</label>
            <select name="status" required>
                <option value="Available">Available</option>
                <option value="In-Use">In-Use</option>
                <option value="Retired">Retired</option>
            </select>
        </p>

        <button type="submit">Update</button>
    </form>

    <a href="${pageContext.request.contextPath}/assets">Back to Asset List</a>
</body>
</html>
