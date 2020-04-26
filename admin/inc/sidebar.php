<?php
$session_role1 = $_SESSION['role'];

$get_comment = "SELECT * FROM comments WHERE status = 'pending'";
$get_comment_run = mysqli_query($con, $get_comment);
$num_of_rows = mysqli_num_rows($get_comment_run);
$get_msg = "SELECT * FROM contact";
$get_msg_run = mysqli_query($con, $get_msg);
$num_of_rows_msg = mysqli_num_rows($get_msg_run);
?>
                     <div class="list-group">
                      <a href="index.php" class="list-group-item active">
                        <i class="fa fa-tachometer"></i> Dashboard
                      </a>
                      <a href="posts.php" class="list-group-item">
                          <i class="fa fa-file-text"></i> All Posts
                      </a>
                      <a href="media.php" class="list-group-item">
                          <i class="fa fa-image"></i> Media
                      </a>
                      <?php
                        if($session_role1 == 'admin'){
                            
                        
                        ?>
                      <a href="comments.php" class="list-group-item">
                          <?php
                          if($num_of_rows > 0){
                              echo "<span class='badge'>$num_of_rows</span>";
                          }
                          ?>
                          <i class="fa fa-comment"></i> Comments  
                      </a>

                      <a href="message.php" class="list-group-item">
                        <?php
                          if($num_of_rows_msg > 0){
                              echo "<span class='badge'>$num_of_rows_msg</span>";
                          }
                          ?>
                          <i class="fa fa-envelope"></i> Messages  
                      </a>



                      <a href="categories.php" class="list-group-item">
                          <i class="fa fa-folder-open"></i> Categories
                      </a>
                      <a href="users.php" class="list-group-item">
                          <i class="fa fa-users"></i> Users
                      </a>
                      <a href="backup.php" class="list-group-item">
                          <i class="fa fa-database"></i> Backup and Restore
                      </a>
                      <?php }?>
                    </div>