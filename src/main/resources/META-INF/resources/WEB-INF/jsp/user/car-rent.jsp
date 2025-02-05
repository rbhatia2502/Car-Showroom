<!DOCTYPE html>
<html>
<head>
    <title>Rent Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Rent Car</h1>
        <form action="/rent" method="post">
            <input type="hidden" name="carId" value="${car.id}">
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="rentalPeriod" class="form-label">Rental Period (in days):</label>
                <input type="number" id="rentalPeriod" name="rentalPeriod" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Rent Now</button>
        </form>
    </div>
</body>
</html>
