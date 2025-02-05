<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Audi Cars</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Audi Cars</h1>
        <table class="table table-dark table-hover">
            <thead>
                <tr>
                    <th>Model</th>
                    <th>Color</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="car" items="${cars}">
                    <tr>
                        <td>${car.model}</td>
                        <td>${car.color}</td>
                        <td>${car.price}</td>
                        <td>
                            <a href="car-purchase?id=${car.id}" class="btn btn-success">Buy</a>
                            <a href="car-rent?id=${car.id}" class="btn btn-primary">Rent</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
