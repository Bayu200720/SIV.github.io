<?php
  $page_title = 'Home Page';
  require_once('includes/load.php');
  if (!$session->isUserLoggedIn(true)) { redirect('index.php', false);}
   $user = find_by_id('users',(int)$_SESSION['user_id']);
   $status = find_by_id('user_groups',(int)$user['user_level']);

?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
 <div class="col-md-12">
    <div class="panel">
      <div class="jumbotron text-center">
         <h1>Selamat Datang <?php echo $user['name'];?></h1>
         <p>Status Anda Sebagai <?php echo $status['group_name'];?></p>
      </div>
    </div>
 </div>
</div>
<?php include_once('layouts/footer.php'); ?>
