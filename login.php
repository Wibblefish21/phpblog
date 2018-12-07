
<?php include_once 'header.php'; ?>

<form action="includes/login.inc.php" method="post">
    <input type="text" name="mailuid" placeholder="Username...">
    <input type="password" name="pwd" placeholder="Password...">
    <button type="submit" name="login-submit">Login</button>
</form>
<a href="signup.php">Create an account</a>


<?php include_once 'footer.php'; ?>

