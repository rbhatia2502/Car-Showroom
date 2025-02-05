<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Audi Showroom</title>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <h1>Audi Car List</h1>
    <table>
        <thead>
            <tr>
                <th>Model</th>
                <th>Color</th>
                <th>Price</th>
                <th>Action</th>
                <th>Request Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="car" items="${cars}">
                <tr>
                    <td>${car.model}</td>
                    <td>${car.color}</td>
                    <td>${car.price}</td>
<td>
    <a href="delete/${car.id}" class="btn btn-warning">Delete</a>
    <a href="update/${car.id}" class="btn btn-primary">Update</a>
</td>

                    
                </tr>
            </c:forEach>
        </tbody>        
    </table>
                <a href="add-car" class="btn btn-primary">Add Car</a>
    
    
</body>
</html>
