<div class="container">
	<h5>Edit Slider</h5>

	<form method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<label>Caption Slider</label>
			<textarea class="form-control" id="editorku" name="caption_slider"><?php echo set_value("caption_slider", $slider['caption_slider']) ?></textarea>
			<?php echo form_error("caption_slider") ?>
		</div>

		<div class="mb-3">
			<label>Foto Lama</label><br>
			<img src="<?php echo $this->config->item("url_slider") . $slider["foto_slider"] ?>" width="300">
		</div>

		<div class="mb-3">
			<label>Ganti Foto Slider</label>
			<input type="file" name="foto_slider" class="form-control">
		</div>

		<button type="submit" class="btn btn-primary">Simpan</button>
	</form>
</div>
