<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/js/dropzone/dropzone.min.css" />
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/dropzone/dropzone.min.js"></script>
<form action="" method="post" id="<?php if(isset($row))echo "editing"?><?php if(!isset($row)) echo "createCar"?>" name="create">
  <input type="hidden" name="id" value="<?php if(isset($row)) echo $row['id']?>">

<div class="modal-body">
      	<div class="form-group">
      		<label>Name Usama</label>
      		<input type="text" name="name" id="name" value="<?php if(isset($row)) echo $row['name']?>" class="form-control" placeholder="Name...">
      		<p class="nameError"></p>
      	</div>
       <div class="form-group">
      		<label>Color</label>
      		<input type="text" name="color" id="color" value="<?php if(isset($row)) echo $row['color']?>" class="form-control" placeholder="Color">
      		<p class="colorError"></p>

      	</div>
       
       <div class="form-group">
      		<label>Price</label>
      		<input type="text" name="price" id="price" value="<?php if(isset($row)) echo $row['price']?>" class="form-control" placeholder="Price...">
      		<p class="priceError"></p>

      	</div>


        <div id="dropzone" class="dropzone"></div>
       
      </div>
      <div class="modal-footer">
        <button type="button" onclick="dontupload()" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save Changes</button>
      </div>
</form>


<script type="text/javascript">
  $(function() {
    var mydrop = new Dropzone(".dropzone",{url: '<?= base_url('index.php/fileupload/fileupload') ?>'});
    

  })

  function dontupload(){

    alert("here");
    Dropzone.forElement('#dropzone').removeAllFiles(true);
    $('div.dz-image').remove();

  }

</script>