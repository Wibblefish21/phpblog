
<?php include_once 'header.php'; ?>

<h1>Create an account</h1>
<form action="includes/signup.inc.php" method="post">
    <input type="text" name="uid" placeholder="Username">
    <input type="text" name="mail" placeholder="Email">
    <input type="password" name="pwd" placeholder="Password">
    <input type="password" name="pwd-repeat" placeholder="Repeat password">
    <button type="submit" name="signup-submit">Create Account</button>
</form>

<?php include_once 'footer.php'; ?>

