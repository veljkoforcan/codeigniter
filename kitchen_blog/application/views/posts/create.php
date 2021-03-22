<h2><?php echo $title ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/create'); ?>
  <div class="form group mb-3">
    <label class="form-label">Title</label>
    <input type="text" name="title" class="form-control" placeholder="Add Title">
  </div>
  <div class="form group mb-3">
    <label for="exampleInputPassword1" class="form-label">Body</label>
    <textarea id="editor1" class="form-control" name="body" placeholder="Add Body"></textarea>
  </div>
  <div class="form-group mb-3">
    <label>Category:</label>
      <select name="category_id" class="form-control">
        <?php foreach($categories as $category) : ?>
          <option value="<?php echo $category['id'];  ?>"><?php echo $category['name'];  ?></option>
        <?php endforeach; ?>
      </select>
  </div>
  <div class="form-group mb-3">
    <label>Upload Image</label>
    <input type="file" name="userfile" size="20">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>