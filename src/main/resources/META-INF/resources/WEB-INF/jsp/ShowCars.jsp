	<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Car List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="my-4">Available Cars</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Car ID</th>
                    <th>Car Name</th>
                    <th>Description</th>
                    <th>Car Type</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <tr th:each="car : ${cars}">
                    <td th:text="${car.carId}"></td>
                    <td th:text="${car.carName}"></td>
                    <td th:text="${car.description}"></td>
                    <td th:text="${car.carType}"></td>
                    <td th:text="${car.carPrice}"></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
