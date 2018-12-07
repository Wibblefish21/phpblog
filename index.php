<?php 
session_start();
?>

<?php 
require 'includes/dbh.inc.php';

// Create query
$query = 'SELECT * FROM posts ORDER BY id DESC LIMIT 3';

// Get result
$result = mysqli_query($conn, $query);

// Fetch Data
$posts = mysqli_fetch_all($result, MYSQLI_ASSOC);


// Free Result
mysqli_free_result($result);

// Close connection
mysqli_close($conn);
?>

<!-- TODO:
    - Make Authors able to upload images in their posts
    - Make authors able to change text properties (font, weight, size, color, etc) of their posts
    - Make authors able to edit their posts
-->

<?php include_once 'header.php'; ?>

    <h2>Recent Posts</h2>
    <a href="posts.php">View all posts...</a>
    <div id="posts">
        <?php foreach($posts as $post) : ?>
        <?php $truncated = (strlen($post['body']) > 1000) ? substr($post['body'], 0, 1000) . '...' : $post['body']; ?>
            <div class="post-preview">
                <h3><?php echo $post['title']; ?></h3>
                <small>Created on <a href="posts.php?date=<?php echo $post['created_at']; ?>"> <?php echo $post['created_at'];  ?></a> by <a href="posts.php?author=<?php echo $post['author'] ?>"> 
                <?php echo $post['author']; ?></a></small>
                <p><?php echo $truncated ?></p>
                <a class="btn " href="post.php?id=<?php echo $post['id']; ?>">Read More</a>
            </div>
        <?php endforeach; ?>     
    </div>

    <?php if (isset($_SESSION['userUid'])): ?>
    <h3>Make a new post:</h3>
    <form action="includes/newPost.inc.php" method="POST">
        <input type="text" name="postTitle" placeholder="Post Title"><br><br>
        <textarea name="postSubject" cols="60" rows="10"></textarea><br>
        <button type="submit" name="postSubmit">Post</button>
    </form>
    <?php endif ?>

<?php include_once 'footer.php'; ?>