<!DOCTYPE html>
<html>
<head>
    <title>Add or Update BMW Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Add or Update BMW Car</h1>
        <form action="/add-bmw" method="post">
            <input type="hidden" name="id" value="${car != null ? car.id : ''}">

            <div class="mb-3">
                <label for="model" class="form-label">Model</label>
                <input type="text" id="model" name="model" class="form-control" value="${car != null ? car.model : ''}" required>
            </div>

            <div class="mb-3">
                <label for="color" class="form-label">Color</label>
                <input type="text" id="color" name="color" class="form-control" value="${car != null ? car.color : ''}" required>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="number" id="price" name="price" class="form-control" step="0.01" value="${car != null ? car.price : ''}" required>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
</body>
</html>
