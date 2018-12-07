<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PhP Blog</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav>
        <h2>PhP Blog</h2>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="posts.php">Posts</a></li>
                <?php if (isset($_SESSION['userUid'])): ?>
                <li id="accountLink"><a href="">Account</a>
                    <ul>
                        <li id="signOut"><a href="includes/logout.inc.php">Log Out</a></li>            
                    </ul>
                </li>
                <?php else: ?>
                <li><a href="login.php">Log In</a></li>
                <li>Don't have an account? <a href="signup.php">Register</a></li>
                <?php endif ?>
            </ul>
        </nav>
    </header>
    <div class="container">