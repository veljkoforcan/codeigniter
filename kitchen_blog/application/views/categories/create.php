<h2><?php echo $title; ?></h2>

<?php echo validation_errors(); ?>

<?php form_open_multipart('categories/create'); ?>

<div class="form-gruup">
<label>Name</label>
<input type="text" class="form-control" name="name" placeholder="Enter name">
</div>
<button type="submit" class="btn btn-secondary mt-2">Submit</button>

</form>


