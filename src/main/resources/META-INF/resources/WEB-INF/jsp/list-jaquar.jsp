<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Jaquar Car List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Jaquar Car List</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Model</th>
                    <th>Color</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${cars}">
                    <tr>
                        <td>${car.model}</td>
                        <td>${car.color}</td>
                        <td>${car.price}</td>
                        <td>
                            <a href="add-jaquar?id=${car.id}" class="btn btn-primary">Edit</a>
                            <a href="delete-jaquar/${car.id}" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="add-jaquar" class="btn btn-success">Add Car</a>
    </div>
</body>
</html>
