<div class="container">
    <h5 class="py-4">Produk <?php echo $kategori["nama_kategori"] ?></h5>
    <div class="row">
        <?php foreach ($produk as $key => $value): ?>
            <div class="col-md-4">
                <a href="<?= base_url("produk/detail/".$value['id_produk']) ?>" class="text-decoration-none">
                    <div class="card border-0 shadow-sm">
                        <img src="<?= $this->config->item("url_produk").$value['foto_produk'] ?>" class="">
                        <div class="card-body text-center">
                            <h6><?php echo $value['nama_produk'] ?></h6>
                            <p class="lead">Rp <?php echo number_format($value['harga_produk']) ?></p>
                        </div>
                    </div>
                </a>
            </div>
        <?php endforeach ?>
    </div>
</div>