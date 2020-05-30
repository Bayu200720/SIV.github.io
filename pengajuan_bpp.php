<?php
  $page_title = 'All Pengajuan';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(6);
?>
<?php
$user = find_by_id('users',(int)$_SESSION['user_id']);
$sales = find_all_by_satker('pengajuan',$user['id_satker']);


?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-6">
    <?php echo display_msg($msg); ?>
  </div>
</div>
  <div class="row">
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading clearfix">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>All Pengajuan</span>
          </strong>
          <div class="pull-right">
            
          </div>
        </div>
        <div class="panel-body">
          <table class="table table-bordered table-striped">
            <thead>
              <tr>
                <th class="text-center" style="width: 50px;">#</th>
                <th> SPM </th>
                <th class="text-center" style="width: 15%;"> Tanggal</th>
                <th class="text-center" style="width: 15%;"> Jenis </th>
                <th class="text-center" style="width: 15%;"> Status Verifikasi </th> 
                <th class="text-center" style="width: 15%;"> Status SPM </th>              
                <th class="text-center" style="width: 15%;"> Status KPPN </th>
                <th class="text-center" style="width: 15%;"> Status SP2D </th>
                <th class="text-center" style="width: 15%;"> Dokumen SP2D </th>
                <th class="text-center" style="width: 15%;"> Action </th>
             </tr>
            </thead>
           <tbody>
             <?php foreach ($sales as $sale):?>
             <tr>
               <td class="text-center"><?php echo count_id();?></td>
               <td><?php echo remove_junk($sale['SPM']); ?></td>
               <td class="text-center"><?php echo $sale['tanggal']; ?></td>
               <td class="text-center"><?php $jenis = find_by_id('jenis',$sale['id_jenis']); echo $jenis['keterangan'];  ?></td>
             <td class="text-center"><?php if($sale['status_verifikasi']==0){?><span class="btn btn-success">Belom di Proses</span><?php }else{?>
             <span class="btn btn-success">Sudah di Proses</span><?php } ?>
            </td>
            
            <td class="text-center"><?php if($sale['status_spm']==0){?><span class="btn btn-success">Belom di Proses</span><?php }else{?>
             <span class="btn btn-success">Sudah di Proses</span><?php } ?>
            </td>

            <td class="text-center"><?php if($sale['status_kppn']==0){?><span class="btn btn-success">Belom di Proses</span><?php }else{?>
             <span class="btn btn-success">Sudah di Proses</span><?php } ?>
            </td>

            <td class="text-center"><?php if($sale['status_sp2d']==0){?><span class="btn btn-success">Belom Cair</span><?php }else{?>
             <span class="btn btn-success">Sudah Cair</span><?php } ?>
            </td>

            <td class="text-center"><?php if($sale['upload']=='0'){?><span class="btn btn-danger">SP2D Belom di upload</span><?php }else{?>
             <a href="uploads/products/<?=$sale['upload']?>" class="btn btn-success" target="_blank">Preview</a>
             <?php } ?>
            </td>
            <td>    <a href="detail_pengajuan_bpp.php?id=<?php echo (int)$sale['id'];?>" class="btn btn-primary btn-xs"  title="Detail Pengajuan" data-toggle="tooltip">
                       <span class="glyphicon glyphicon-edit"></span>
                     </a>
            </td>
             </tr>
             <?php endforeach;?>
           </tbody>
         </table>
        </div>
      </div>
    </div>
  </div>
<?php include_once('layouts/footer.php'); ?>
