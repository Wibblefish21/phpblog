<?php 

    include_once 'dbh.inc.php'; 
    $id = mysqli_real_escape_string($conn, $_GET['id']);

    // Create Query
    $query = "SELECT * FROM posts WHERE id = $id";

    // Get Result
    $result = mysqli_query($conn, $query);

    // Fetch Data 
    $post = mysqli_fetch_assoc($result);

    // Free result
    mysqli_free_result($result);
    
    if (isset($_POST['delete-post-submit'])) {
        $delete = "DELETE FROM posts WHERE id = $id";
        $result = mysqli_query($conn, $delete);

        if ($result) {
            header("Location: ../index.php?delete=success");
            exit();
        } else {
            header("Location: ../index.php?delete=failure");
            exit();
        } 
    } else {
        header("Location: ../index.php");
    }

?>