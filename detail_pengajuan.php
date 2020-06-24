<?php
  $page_title = 'All Detail Pengajuan';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(6);
?>
<?php
$sales = find_detail($_GET['id']);
$sales1 = find_all_global('pengajuan',$_GET['id'],'id');
//var_dump($sales1);exit();
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
            <span>All Detail Pengajuan</span>
          </strong>
          <div class="pull-right">
            <a href="add_detail_pengajuan.php?id=<?=$_GET['id'];?>" class="btn btn-primary">Add Detail Pengajuan</a>
            <?php $user=find_by_id('user',$_SESSION['user_id']);  if( $user['user_level']== '6'){?>
            <a href="pengajuan_bpp.php?id=<?=$sales1[0]['id_nodin'];?>" class="btn btn-warning">Back</a>
            <?php }else{ ?>
              <a href="pengajuan_v.php?id=<?=$sales1[0]['id_nodin'];?>" class="btn btn-warning">Back</a>
            <?php } ?>
          </div>
        </div>
        <div class="panel-body">
          <table class="table table-bordered table-striped">
            <thead>
              <tr>
                <th class="text-center" style="width: 50px;">#</th>
                <th class="text-center" style="width: 15%;"> NO SPTJB </th>
                <th class="text-center" style="width: 15%;"> Akun</th>
                <th class="text-center" style="width: 15%;"> Nominal </th> 
                <th class="text-center" style="width: 15%;"> PPH </th>
                <th class="text-center" style="width: 15%;"> PPN </th>         
                <th class="text-center" style="width: 15%;"> Keterangan </th>
                <th class="text-center" style="width: 100px;"> Actions </th>
             </tr>
            </thead>
           <tbody>

             <?php
              $tot=0;
              $tot1=0;
              $tot2=0;
             foreach ($sales as $sale):?>
             <tr>
               <td class="text-center"><?php echo count_id();?></td>
               <td class="text-center"><?php echo $sale['no_sptjb']; ?></td>
               <td class="text-center"><?php $akun= find_by_id('akun',$sale['id_akun']); echo $akun['mak'] ; ?></td>
               <td class="text-center"><?php echo $sale['nominal']; ?></td>
               <td class="text-center"><?php echo $sale['pph']; ?></td>
               <td class="text-center"><?php echo $sale['ppn']; ?></td>
               <td class="text-center"><?php echo $sale['keterangan'];  ?></td>
               <td class="text-center">
                  <div class="btn-group">
                     <a href="edit_detail_pengajuan.php?id=<?php echo (int)$sale['id'];?>" class="btn btn-warning btn-xs"  title="Edit" data-toggle="tooltip">
                       <span class="glyphicon glyphicon-edit"></span>
                     </a>
                     <a onclick="return confirm('Yakin Hapus?')" href="delete_detail_pengajuan.php?id=<?php echo (int)$sale['id'];?>" class="btn btn-danger btn-xs"  title="Delete" data-toggle="tooltip">
                       <span class="glyphicon glyphicon-trash"></span>
                     </a>
                  </div>
               </td>
             </tr>

             <?php $tot+=$sale['nominal']; $tot1+=$sale['pph']; $tot2+=$sale['ppn']; endforeach;?>
           </tbody>
            <tr>
                <th >Jumlah</th>
                <th >  </th>
                <th > </th>
                <th > <?=$tot;?> </th> 
                <th > <?=$tot1;?> </th>
                <th > <?=$tot2;?> </th>
                <th >  </th>
                <th >  </th>
             </tr>
         </table>
        </div>
      </div>
    </div>
  </div>
<?php include_once('layouts/footer.php'); ?>
