<div class="container">
    <h5>Kategori Produk</h5>
    <div class="row">
        <?php foreach ($kategori as $key => $value): ?>
            <div class="col-md-3">
                <a href="<?= base_url("kategori/detail/".$value['id_kategori']) ?>" class="text-decoration-none">
                    <div class="card border-0 shadow-sm">
                        <img src="<?= $this->config->item("url_kategori").$value['foto_kategori'] ?>" class="">
                        <div class="card-body text-center">
                            <h6><?php echo $value['nama_kategori'] ?></h6>
                        </div>
                    </div>
                </a>
            </div>
        <?php endforeach ?>
    </div>
</div>