<!DOCTYPE html>
<html>
<head>
    <title>Car Showroom</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            width: 80%;
            margin: 20px auto;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .car-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .car-item {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            margin: 10px;
            width: calc(33% - 20px);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .car-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .car-item h2 {
            font-size: 18px;
            color: #555;
        }
        .car-item button {
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .car-item button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Car Showroom</h1>
        <div class="car-list">
            <div class="car-item">
                <img src="https://via.placeholder.com/300x200.png?text=Tesla+Model+S" alt="Tesla Model S">
                <h2>Audi Cars</h2>
                <p>There Are Many Luxary Cars</p>
                <button onclick="window.location.href='/audi'">View Details</button>
                             </div>
            <div class="car-item">
                <img src="https://via.placeholder.com/300x200.png?text=Ford+Mustang" alt="Ford Mustang">
                <h2>Jaquar Cars</h2>
                <p>A classic American muscle car.</p>
                <button onclick="window.location.href='/jaquar'">View Details</button>
            </div>
            <div class="car-item">
                <img src="https://via.placeholder.com/300x200.png?text=BMW+X5" alt="BMW X5">
                <h2>BMW X5</h2>
                <p>A luxury SUV with advanced features.</p>
                <button onclick="window.location.href='/bmw'">View Details</button>
            </div>
        </div>
    </div>
</body>
</html>
