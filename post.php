<?php 
    require 'includes/dbh.inc.php';
    session_start();

    // get ID
    $id = mysqli_real_escape_string($conn, $_GET['id']);

    // Create query
    $query = 'SELECT * FROM posts WHERE id = '.$id;

    // Get result
    $result = mysqli_query($conn, $query);

    // Fetch Data
    $post = mysqli_fetch_assoc($result);
   
    // Free Result
    mysqli_free_result($result);

    // Close connection
    mysqli_close($conn);
?>

<?php include 'header.php'; ?>
    <div class="container">
        <a href="index.php" class="btn btn-primary">Back</a>
        <h1><?php echo $post['title']; ?></h1>
            <small>Created on <a href="posts.php?date=<?php echo $post['created_at']; ?>"> <?php echo $post['created_at'];  ?> </a> by  <a href="posts.php?author=<?php echo $post['author'] ?>"> 
            <?php echo $post['author']; ?></small></a>
            <p><?php echo $post['body']; ?></p>
        
        <?php if (isset($_SESSION['userUid']) && $_SESSION['userUid'] == $post['author']): ?>
        <form action="includes/deletePost.inc.php?id=<?php echo $id?>" method="post">
            <button name="delete-post-submit">Delete Post</button>
        </form>
        <form action=""> <!-- Edit Post button/form will be here -->
            <button name="edit-post-submit">Edit Post</button>
        </form>
        <?php endif ?>
    </div>
<?php include 'footer.php'; ?>