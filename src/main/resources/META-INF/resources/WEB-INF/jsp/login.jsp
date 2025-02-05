<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Background style for a modern luxury look */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #4e4e4e, #000);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        /* Card styling */
        .card {
            background-color: rgba(255, 255, 255, 0.95);
            border: none;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }

        .card-header {
            background-color: #1a1a1a;
            color: #fff;
            font-size: 1.5rem;
            font-weight: 600;
            text-align: center;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .card-body {
            padding: 30px;
        }

        .form-label {
            font-weight: 500;
            color: #333;
        }

        .form-control {
            background-color: #f4f4f4;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 12px;
            font-size: 1rem;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 12px;
            font-size: 1.2rem;
            font-weight: 600;
            border-radius: 50px;
            width: 100%;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        .btn-primary:active {
            background-color: #003f7f;
            transform: translateY(0);
        }

        .text-danger {
            text-align: center;
            font-size: 0.9rem;
            margin-top: 10px;
        }

        /* Luxury typography and hover effect */
        h3 {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            font-weight: bold;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        /* Elegant error message style */
        .error-message {
            color: #dc3545;
            font-size: 1rem;
            font-weight: 500;
            text-align: center;
        }

    </style>
</head>
<body>

    <div class="container">
        <div class="card shadow-lg">
            <div class="card-header">
                <h3>Login</h3>
            </div>
            <div class="card-body">
                <!-- Form submitting to /login -->
                <form action="/login" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username:</label>
                        <input type="text" id="username" name="username" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password:</label>
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>

                    <!-- Error message display -->
                    <div class="error-message">
                        ${error}
                    </div>

                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
