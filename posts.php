<?php 
session_start();
?>

<?php 
require 'includes/dbh.inc.php';

// Create query

if (isset($_GET['author'])) {
    $author = $_GET['author'];
    $query = "SELECT * FROM posts WHERE author = '$author' ORDER BY id DESC";
    $heading = "Posts by $author";
} else if (isset($_GET['date'])){
    $date = $_GET['date'];
    $query = "SELECT * FROM posts WHERE created_at = '$date' ORDER BY id DESC";
    $heading = "Posts from $date";
} else {
    $query = "SELECT * FROM posts ORDER BY id DESC";
    $heading = "All Posts";
}
// Get result
$result = mysqli_query($conn, $query);

// Fetch Data
$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);


// Free Result
mysqli_free_result($result);

// Close connection
mysqli_close($conn);

?>

<?php include_once 'header.php'; ?>

    <h2><?php echo $heading ?></h2>
    <div id="posts-recent">
        <?php foreach($posts as $post) : ?>
        <?php $truncated = (strlen($post['body']) > 1000) ? substr($post['body'], 0, 1000) . '...' : $post['body']; //Shortens length of previewed post and replaces the rest of it with '...' after 1000 characters ?>
            <div class="post-preview">
                <h3><?php echo $post['title']; ?></h3>
                <small>Created on <a href="posts.php?date=<?php echo $post['created_at']; ?>"> <?php echo $post['created_at'];  ?></a> by <a href="posts.php?author=<?php echo $post['author'] ?>"> 
                <?php echo $post['author']; ?></small></a>
                <p><?php echo $truncated ?></p>
                <a class="btn " href="post.php?id=<?php echo $post['id']; ?>">Read More</a>
            </div>
        <?php endforeach; ?>
    </div>

<?php include_once 'footer.php'; ?>
