<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(5);
?>
<?php
  $pengajuan = find_by_id('pengajuan',(int)$_GET['id']);
  $user = find_by_id('users',(int)$_SESSION['user_id']);
  if(!$pengajuan){
    $session->msg("d","Missing Pengajuan id.");
        if($user['user_level']==5){
           redirect('pengajuan_ben.php', false);
        }else{
    redirect('pengajuan.php');
      }
  }
  $query  = "UPDATE pengajuan SET ";
        $query .= "status_sp2d='".$_SESSION['user_id']."'";
        $query .= "WHERE id='{$pengajuan["id"]}'";
        $result = $db->query($query);
        
      $data = find_Tpengajuan($pengajuan['id']);
//      var_dump($data);exit();
      $insert ="INSERT INTO pencairan(id_pengajuan,nominal,keterangan,tanggal,id_satker,spm)VALUES({$pengajuan['id']},{$data['jum']},'Pengajuan','{$data['tanggal']}',{$data['id_satker']},{$data['SPM']})";
      $db->query($insert);

        $session->msg('s',' Berhasil di Proses');
            if($user['user_level']==5){
           redirect('pengajuan_ben.php', false);
        }else{
      redirect('pengajuan.php', false);
        }
?>