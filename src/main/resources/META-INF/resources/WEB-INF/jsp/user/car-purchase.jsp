<!DOCTYPE html>
<html>
<head>
    <title>Purchase Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Purchase Car</h1>
        <form action="/purchase" method="post">
            <input type="hidden" name="carId" value="${car.id}">
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="payment" class="form-label">Payment Details:</label>
                <input type="text" id="payment" name="payment" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-success w-100">Complete Purchase</button>
        </form>
    </div>
</body>
</html>
