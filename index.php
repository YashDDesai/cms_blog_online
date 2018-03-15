<?php require_once('inc/top.php');
require_once('inc/setting.php')?>
  </head>
  <body>
<?php require_once('inc/header.php');

$init_query = "SELECT * FROM users WHERE role= 'admin'";
$init_run = mysqli_query($con, $init_query);
$init_row = mysqli_fetch_array($init_run);
$has_admin = $init_row['role'];
      if($has_admin==null)
      {
          header("location:init.php");
      }
      $number_of_posts = 3;

      if(isset($_GET['page'])){
          $page_id = $_GET['page'];
      }
      else{
          $page_id = 1;
      }

      if(isset($_GET['cat'])){
          $cat_id = $_GET['cat'];
          $cat_query = "SELECT * FROM categories WHERE id = $cat_id";
          $cat_run = mysqli_query($con, $cat_query);
          $cat_row = mysqli_fetch_array($cat_run);
          $cat_name = $cat_row['category'];
      }


      if(isset($_POST['search'])){
          $search = $_POST['search-title'];
          $all_posts_query = "SELECT * FROM posts WHERE status = 'publish'";
          $all_posts_query .= " and tags LIKE '%$search%'";
          $all_posts_run = mysqli_query($con, $all_posts_query);
          $all_posts = mysqli_num_rows($all_posts_run);
          $total_pages = ceil($all_posts / $number_of_posts);
          $posts_start_from = ($page_id - 1) * $number_of_posts;
      }
      else{
          $all_posts_query = "SELECT * FROM posts WHERE status = 'publish'";
          if(isset($cat_name)){
              $all_posts_query .= " and categories = '$cat_name'";
          }
          $all_posts_run = mysqli_query($con, $all_posts_query);
          $all_posts = mysqli_num_rows($all_posts_run);
          $total_pages = ceil($all_posts / $number_of_posts);
          $posts_start_from = ($page_id - 1) * $number_of_posts;
      }

?>

    <div class="jumbotron">
        <div class="container">
            <div id="details" class="animated fadeInLeft">
                <h1><?php echo $blog_title." "; ?><span>Blog</span></h1>
                <p style="color:black;"><?php echo $blog_tagline; ?></p>
            </div>
        </div>
        <img src="img/<?php echo $banner?>" alt="Top Image">
    </div>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                <?php
                    $slider_query = "SELECT * FROM posts WHERE status = 'publish' ORDER BY id DESC LIMIT 5";
                    $slider_run = mysqli_query($con, $slider_query);
                    if(mysqli_num_rows($slider_run) > 0){
                        $count = mysqli_num_rows($slider_run);
                    ?>
                   <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
                      <ol class="carousel-indicators">
                        <?php
                          for($i = 0; $i < $count; $i++){
                              if($i == 0){
                                  echo "<li data-target='#carousel-example-generic' data-slide-to='".$i."' class='active'></li>";
                              }
                              else{
                                  echo "<li data-target='#carousel-example-generic' data-slide-to='".$i."'></li>";
                              }
                          }
                          ?>
                      </ol>

                      <!-- Wrapper for slides -->
                      <div class="carousel-inner" role="listbox">
                       <?php
                        $check = 0;
                          while($slider_row = mysqli_fetch_array($slider_run)){
                              $slider_id = $slider_row['id'];
                              $slider_image = $slider_row['image'];
                              $slider_title = $slider_row['title'];
                              $check = $check + 1;
                              if($check == 1){
                                  echo "<div class='item active'>";
                              }
                              else{
                                  echo "<div class='item'>";
                              }
                          ?>
                          <a href="post.php?post_id=<?php echo $slider_id;?>"><img src="img/<?php echo $slider_image;?>"></a>
                          <div class="carousel-caption">
                              <h2><?php echo $slider_title;?></h2>
                          </div>
                        </div>
                        <?php }?>
                      </div>

                      <!-- Controls -->
                      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                    <?php
                    }
                    if(isset($_POST['search'])){
                        $search = $_POST['search-title'];
                        $query = "SELECT * FROM posts WHERE status = 'publish'";
                        $query .= " and tags LIKE '%$search%'";
                        $query .= " ORDER BY id DESC LIMIT $posts_start_from, $number_of_posts";
                    }
                    else{
                        $query = "SELECT * FROM posts WHERE status = 'publish'";
                        if(isset($cat_name)){
                            $query .= " and categories = '$cat_name'";
                        }
                        $query .= " ORDER BY id DESC LIMIT $posts_start_from, $number_of_posts";
                    }
                    $run = mysqli_query($con,$query);
                    if(mysqli_num_rows($run) > 0){
                        while($row = mysqli_fetch_array($run)){
                            $id = $row['id'];
                            $date = getdate($row['date']);
                            $day = $date['mday'];
                            $month = $date['month'];
                            $year = $date['year'];
                            $title = $row['title'];
                            $author = $row['author'];
                            $author_image = $row['author_image'];
                            $categories = $row['categories'];
                            $tags = $row['tags'];
                            $post_data = $row['post_data'];
                            $views = $row['views'];
                            $status = $row['status'];
                            $image = $row['image'];
                    ?>
                    <div class="post">
                        <div class="row">
                            <div class="col-md-2 post-date">
                                <div class="day"><?php echo $day;?></div>
                                <div class="month"><?php echo $month;?></div>
                                <div class="year"><?php echo $year;?></div>
                            </div>
                            <div class="col-md-8 post-title">
                                <a href="post.php?post_id=<?php echo $id;?>"><h2><?php echo $title;?></h2></a>
                                <p>Written by: <span><?php echo ucfirst($author);?></span></p>
                            </div>
                            <div class="col-md-2 profile-picture">
                                <img src="admin/img/<?php echo $author_image;?>" alt="Profile Picture" class="img-circle">

                            </div>
                        </div>
                        <a href="post.php?post_id=<?php echo $id;?>"><img src="img/<?php echo $image;?>" alt="Post Image"></a>
                        <div class="desc">
                            <?php echo substr($post_data,0,300)."......";?>
                        </div>
                        <a href="post.php?post_id=<?php echo $id;?>" class="btn btn-primary">Read More</a>
                        <div class="bottom">
                            <span class="first"><i class="fa fa-folder"></i><a href="#"> <?php echo ucfirst($categories);?></a></span>|
                            <span class="sec"><i class="fa fa-comment"></i><a href="#"> Comment</a></span>
                        </div>
                    </div>
                    <?php
                         }
                    }
                    else{
                        echo "<center><h2>No Posts Available</h2></center>";
                    }
                    ?>

                    <nav id="pagination">
                      <ul class="pagination">

                        <?php
                        $pr_p=$page_id-1;
                        $nx_p=$page_id+1;

                        if($pr_p>0){
                        echo "<li><a href='index.php?page=".$pr_p."&".(isset($cat_name)?"cat=$cat_id":" ")."'>Previous</a></li>";
                    }
                    else{echo "<li class='disabled'><a href='index.php?page=".$pr_p."&".(isset($cat_name)?"cat=$cat_id":" ")."'>Previous</a></li>";}

                        //use $total_pages to print all pages
                          for($i = 1; $i <= $total_pages; $i++){
                              echo "<li class='".($page_id == $i ? 'active': ' ')."'><a href='index.php?page=".$i."&".(isset($cat_name)?"cat=$cat_id":" ")."'>$i</a></li>";
                          }

                          if($nx_p<=$total_pages){
                           echo "<li><a href='index.php?page=".$nx_p."&".(isset($cat_name)?"cat=$cat_id":" ")."'>Next</a></li>";
                       }else{echo "<li class='disabled'><a href='index.php?page=".$nx_p."&".(isset($cat_name)?"cat=$cat_id":" ")."'>Next</a></li>";}
                          ?>
                      </ul>
                    </nav>
                </div>

                <div class="col-md-4">
                    <?php require_once('inc/sidebar.php');?>
                </div>
            </div>
        </div>
    </section>
<?php require_once('inc/footer.php');?>
