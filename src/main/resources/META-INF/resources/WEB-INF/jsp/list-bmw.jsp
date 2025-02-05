<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BMW Car List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #000; /* Black background */
            color: #fff; /* White text color for contrast */
            background-image: url('https://example.com/path-to-your-car-background-image.jpg'); /* Replace with your car background image URL */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        h1 {
            text-align: center;
            color: #fff;
            font-size: 3rem;
            margin-top: 50px;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.7);
        }

        .container {
            margin-top: 30px;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent dark container */
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            width: 80%;
            max-width: 1200px;
        }

        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
            background-color: grey; /* Darker background for table */
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #444;
            color: #dcdcdc; /* Lighter grey color for text */
        }

        th {
            background-color: #000;
            color: #fff;
            font-size: 1.1rem;
        }

        tr:nth-child(even) {
            background-color: #333;
        }

        tr:hover {
            background-color: #444;
        }

        .btn {
            font-size: 1rem;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 25px;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-danger {
            background-color: #dc3545;
            border: none;
        }

        .btn-success {
            background-color: #28a745;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .action-btns {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        .add-car-btn {
            display: block;
            width: 220px;
            margin: 20px auto;
            background-color: #28a745;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 1.25rem;
            border-radius: 30px;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .add-car-btn:hover {
            background-color: #218838;
        }

        /* 3D Button Effect */
        .btn-3d {
            background-color: #333;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 1.1rem;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .btn-3d:hover {
            transform: translateY(-4px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

    </style>
</head>
<body>

    <div class="container">
        <h1>BMW Car Collection</h1>

        <table class="table table-striped table-hover">
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
                            <div class="action-btns">
                                <a href="add-bmw?id=${car.id}" class="btn btn-3d">Edit</a>
                                <a href="delete-bmw/${car.id}" class="btn btn-danger">Delete</a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <a href="add-bmw" class="add-car-btn">Add New BMW</a>
    </div>

    <script>
        // Add 3D hover effect to buttons
        document.querySelectorAll('.btn-3d').forEach(function(button) {
            button.addEventListener('mouseover', function() {
                this.style.transform = 'translateY(-4px)';
                this.style.boxShadow = '0 8px 20px rgba(0, 0, 0, 0.3)';
            });
            button.addEventListener('mouseout', function() {
                this.style.transform = 'translateY(0)';
                this.style.boxShadow = '0 4px 10px rgba(0, 0, 0, 0.2)';
            });
        });
    </script>

</body>
</html>
