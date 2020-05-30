<?php
  $page_title = 'edit Detail Pengajuan';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  
  $detail = find_by_id('detail_pengajuan',(int)$_GET['id']);
  if(!$detail){
    $session->msg("d","Missing detail pengajuan id.");
    redirect('detail_pengajuan.php');
  }

?>
<?php
 if(isset($_POST['edit_detail_pengajuan'])){
   $req_fields = array('no_sptjb','nominal','pph','ppn','akun','keterangan');
   validate_fields($req_fields);
   if(empty($errors)){
     $no_sptjb  = remove_junk($db->escape($_POST['no_sptjb']));
     $nominal  = remove_junk($db->escape($_POST['nominal']));
     $ppn  = remove_junk($db->escape($_POST['ppn']));
     $pph  = remove_junk($db->escape($_POST['pph']));
     $akun  = remove_junk($db->escape($_POST['akun']));
     $keterangan   = remove_junk($db->escape($_POST['keterangan']));
     $date    = make_date();
     $id_pengajuan = remove_junk($db->escape($_GET['id']));
     $query  = "UPDATE detail_pengajuan SET";
     $query .=" no_sptjb='{$no_sptjb}',nominal='{$nominal}',akun='{$akun}',keterangan='{$keterangan}',pph='{$pph}',ppn='{$ppn}'";
     $query .=" WHERE id= '{$id_pengajuan}'";
     if($db->query($query)){
       $session->msg('s',"Detail Pengajuan edited ");
       redirect('detail_pengajuan.php?id='.$detail['id_pengajuan'], false);
     } else {
       $session->msg('d',' Sorry failed to edited!');
       redirect('detail_pengajuan.php?id='.$detail['id_pengajuan'], false);
     }

   } else{
     $session->msg("d", $errors);
     redirect('detail_pengajuan.php?id='.$detail['id_pengajuan'],false);
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
            <span>Edit New Detail Pengajuan</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
          <form method="post" action="" class="clearfix">
              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="no_sptjb" placeholder="NO SPTJB" value="<?=$detail['no_sptjb']?>">
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="akun" placeholder="Akun" value="<?=$detail['akun']?>">
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="number" class="form-control" name="nominal" placeholder="Nominal" value="<?=$detail['nominal']?>">
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="number" class="form-control" name="pph" placeholder="pph" value="<?=$detail['pph']?>">
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="number" class="form-control" name="ppn" placeholder="ppn" value="<?=$detail['ppn']?>">
               </div>
              </div>

              <div class="form-group">
                <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control" name="keterangan" placeholder="Keterangan" value="<?=$detail['keterangan']?>">
               </div>
              </div>

              <button type="submit" name="edit_detail_pengajuan" class="btn btn-danger">Update Detail pengajuan</button>
          </form>
         </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>
