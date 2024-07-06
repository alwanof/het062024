<?php
// connection variables
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'ecom12';
// create a connection
$con = new mysqli($host, $user, $password, $database);

// check if the connection is successful
if (!$con) {
    die('Connection failed: ' . mysqli_connect_error());
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Simple Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div class="container mt-5">

        <div class="container">
            <h3>Customers Table</h3>
            <form method="get" action="index.php">
                <div class="input-group">
                    <input type="text" class="form-control" name="search" placeholder="Search">
                    <button type="submit" class="btn btn-sm btn-primary">Search</button>
                </div>
            </form>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Customer Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Address</th>
                        <th scope="col">Created At</th>
                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td>1</td>
                        <td>John Doe</td>
                        <td>john@example.com</td>
                        <td>1234567890</td>
                        <td>123, Main St, Anytown</td>
                        <td>2023-01-01</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jane Doe</td>
                        <td>jane@example.com</td>
                        <td>9876543210</td>
                        <td>456, Main St, Anytown</td>
                        <td>2023-01-02</td>
                    </tr>
                </tbody>
            </table>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>