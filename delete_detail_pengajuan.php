<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(6);
?>
<?php
  $d_sale = find_by_id('detail_pengajuan',(int)$_GET['id']);
  if(!$d_sale){
    $session->msg("d","Missing detail pengajuan id.");
    redirect('detail pengajuan.php?id='.$d_sale['id_pengajuan']);
  }
?>
<?php
  $delete_id = delete_by_id('detail_pengajuan',(int)$d_sale['id']);
  if($delete_id){
      $session->msg("s","detail pengajuan deleted.");
      redirect('detail_pengajuan.php?id='.$d_sale['id_pengajuan']);
  } else {
      $session->msg("d","detail pengajuan deletion failed.");
      redirect('detail_pengajuan.php?id='.$d_sale['id_pengajuan']);
  }
?>
