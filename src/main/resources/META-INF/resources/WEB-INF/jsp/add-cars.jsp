<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add or Update Audi Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-label {
            font-weight: bold;
        }
        .form-control {
            padding: 10px;
            font-size: 16px;
        }
        .btn {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Add or Update Audi Car</h1>
        <form action="/add-car" method="post">
            <!-- For update, the ID will be pre-filled -->
            <input type="hidden" name="id" value="${car != null ? car.id : ''}">

            <div class="form-group">
                <label for="model" class="form-label">Model:</label>
                <input type="text" id="model" name="model" class="form-control" value="${car != null ? car.model : ''}" required>
            </div>

            <div class="form-group">
                <label for="color" class="form-label">Color:</label>
                <input type="text" id="color" name="color" class="form-control" value="${car != null ? car.color : ''}" required>
            </div>

            <div class="form-group">
                <label for="price" class="form-label">Price:</label>
                <input type="number" id="price" name="price" class="form-control" step="0.01" value="${car != null ? car.price : ''}" required>
            </div>

            <button type="submit" class="btn">Save</button>
        </form>
    </div>

</body>
</html>
