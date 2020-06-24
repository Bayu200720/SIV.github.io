<?php
  $page_title = 'Add Pengajuan';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(6);
  $all_categories = find_all('jenis');
  $satker = find_all('satker');
  $all_photo = find_all('media');
  $user = find_by_id('users',(int)$_SESSION['user_id']);
 
?>
<?php
 if(isset($_POST['add_pengajuan'])){
   $req_fields = array('spm','id_jenis_pengajuan');
   validate_fields($req_fields);
   if(empty($errors)){
     $spm  = remove_junk($db->escape($_POST['spm']));
     $id_jenis   = remove_junk($db->escape($_POST['id_jenis']));
     $tanggal   = remove_junk($db->escape($_POST['tanggal']));
     $id_satker = remove_junk($db->escape($_POST['id_satker']));
     $p_pengajuan = remove_junk($db->escape($_POST['p_pengajuan']));
     $user_id   = remove_junk($db->escape($_SESSION['user_id']));
     $id_nodin = remove_junk($db->escape($_POST['id']));
     $id_jenis_pengajuan = remove_junk($db->escape($_POST['id_jenis_pengajuan']));
     $date    = make_date();
     $query  = "INSERT INTO pengajuan (";
     $query .=" SPM,id_nodin,id_jenis_pengajuan ";
     $query .=") VALUES (";
     $query .=" '{$spm}','{$id_nodin}',{$id_jenis_pengajuan}";
     $query .=")";
  
     if($db->query($query)){
       $session->msg('s',"Pengajuan added ");
       if($user['user_level']==2){
        redirect('pengajuan_bpp.php', false);
       }else{
       redirect('pengajuan_bpp.php?id='.$id_nodin.'', false);
       }
     } else {
       $session->msg('d',' Sorry failed to added!');
       if($user['user_level']==2){
        redirect('pengajuan_bpp.php', false);
      }else{
        redirect('pengajuan_bpp.php?id='.$id_nodin.'', false);
      }
     }

   } else{
     $session->msg("d", $errors);
        redirect('pengajuan.php?id='.$id_nodin.'', false);
   }

 }

?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
</div>
  <div class="row">
  <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Add New Pengajuan</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
          <form method="post" action="add_pengajuan.php" class="clearfix">
              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="spm" placeholder="SPM">
                  <input type="hidden" class="form-control" value="<?=$_GET['id'];?>" name="id" placeholder="SPM">
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  Jenis Pegajuan</span>
                  <select class="form-control" name="id_jenis_pengajuan">
                      <option value="">Pilih Jenis Pengajuan</option>
                      <?php $jenis = find_all('jenis_pengajuan');?>
                    <?php  foreach ($jenis as $j): ?>
                      <option value="<?php echo (int)$j['id'] ?>">
                        <?php echo $j['keterangan'] ?></option>
                    <?php endforeach; ?>
                </select>
               </div>
              </div>

              <button type="submit" name="add_pengajuan" class="btn btn-danger">Add pengajuan</button>
          </form>
         </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>
