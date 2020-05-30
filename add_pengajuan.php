<?php
  $page_title = 'Add Pengajuan';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  $all_categories = find_all('jenis');
  $satker = find_all('satker');
  $all_photo = find_all('media');
  $user = find_by_id('users',(int)$_SESSION['user_id']);
?>
<?php
 if(isset($_POST['add_pengajuan'])){
   $req_fields = array('spm','id_jenis','tanggal','id_satker','p_pengajuan');
   validate_fields($req_fields);
   if(empty($errors)){
     $spm  = remove_junk($db->escape($_POST['spm']));
     $id_jenis   = remove_junk($db->escape($_POST['id_jenis']));
     $tanggal   = remove_junk($db->escape($_POST['tanggal']));
     $id_satker = remove_junk($db->escape($_POST['id_satker']));
     $p_pengajuan = remove_junk($db->escape($_POST['p_pengajuan']));
     $user_id   = remove_junk($db->escape($_SESSION['user_id']));
     $date    = make_date();
     $query  = "INSERT INTO pengajuan (";
     $query .=" tanggal,SPM,id_user,status_verifikasi,status_kppn,status_spm,status_sp2d,upload,id_jenis,id_satker,p_pengajuan";
     $query .=") VALUES (";
     $query .=" '{$tanggal}', '{$spm}', '{$user_id}', '{0}', '{0}', '{0}', '{0}','0','{$id_jenis}','{$id_satker}','{$p_pengajuan}'";
     $query .=")";
     if($db->query($query)){
       $session->msg('s',"Pengajuan added ");
       if($user['user_level']==2){
        redirect('pengajuan_verifikator.php', false);
       }else{
       redirect('pengajuan.php', false);
       }
     } else {
       $session->msg('d',' Sorry failed to added!');
       if($user['user_level']==2){
        redirect('pengajuan_verifikator.php', false);
      }else{
         redirect('pengajuan.php', false);
      }
     }

   } else{
     $session->msg("d", $errors);
     redirect('add_pengajuan.php',false);
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
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <select class="form-control" name="id_jenis">
                      <option value="">Pilih Jenis Pengajuan</option>
                    <?php  foreach ($all_categories as $cat): ?>
                      <option value="<?php echo (int)$cat['id'] ?>">
                        <?php echo $cat['keterangan'] ?></option>
                    <?php endforeach; ?>
                    </select>
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <select class="form-control" name="id_satker">
                      <option value="">Pilih Satker</option>
                    <?php  foreach ($satker as $sat): ?>
                      <option value="<?php echo (int)$sat['id'] ?>">
                        <?php echo $sat['keterangan'] ?></option>
                    <?php endforeach; ?>
                    </select>
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="p_pengajuan" placeholder="Pegawai yang melakukan Pengajuan">
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="date" class="form-control" name="tanggal" placeholder="Tanggal">
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
