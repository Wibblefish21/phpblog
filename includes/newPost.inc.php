<?php 
session_start();
require 'dbh.inc.php';

if (isset($_POST['postSubmit'])) {
    $postTitle = $_POST['postTitle']; 
    $postSubject = $_POST['postSubject'];
    $postAuthor = $_SESSION['userUid']; 
    
   

    if (empty($postTitle) || empty($postSubject)) {
        header("Location: ../index.php?error=emptyfields");
        exit();
    } else {
        $sql = "SELECT * FROM posts;";
        $stmt = mysqli_stmt_init($conn);

        if (!mysqli_stmt_prepare($stmt, $sql)) {
            echo "SQL Statement failed!";
        } else {
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);

            $sql = "INSERT INTO posts (id, title, body, author, created_at) VALUES (NULL, ?, ?, ?, CURRENT_TIMESTAMP);";
            if (!mysqli_stmt_prepare($stmt, $sql)) {
                echo "SQL statement failed!";
            } else {
                mysqli_stmt_bind_param($stmt, "sss", $postTitle, $postSubject, $postAuthor);
                mysqli_stmt_execute($stmt);
                header("Location: ../index.php?upload=success");
            }
        }
    }

} else {
    header('Location: ../index.php');
}

?>