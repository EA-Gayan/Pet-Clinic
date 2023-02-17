<?php
    // The amounts of products to show on each page
    $num_products_on_each_page = 100;

    // The current page, in the URL this will appear as index.php?page=products&p=1, index.php?page=products&p=2, etc...
    $current_page = isset($_GET['p']) && is_numeric($_GET['p']) ? (int)$_GET['p'] : 1;

    // Select products ordered by the date added
    $stmt = $pdo->prepare('SELECT * FROM products ORDER BY date_added ASC LIMIT ?,?');

    // bindValue will allow us to use integer in the SQL statement, we need to use for LIMIT
    $stmt->bindValue(1, ($current_page - 1) * $num_products_on_each_page, PDO::PARAM_INT);
    $stmt->bindValue(2, $num_products_on_each_page, PDO::PARAM_INT);
    $stmt->execute();

    // Fetch the products from the database and return the result as an Array
    $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Get the total number of products
    $total_products = $pdo->query('SELECT * FROM products')->rowCount();
?>

<?=page_header('Products')?>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
<script src= "scrips.js"></script>

<div class="products content-wrapper">
    <h1>Pet Shop</h1>
    <div class="d-flex justify-content-center px-5">
        <div class="search"> <input type="text" id = "search" class="search-input" placeholder="Search..." name=""> <a href="#" class="search-icon"> <i class="fa fa-search"></i> </a> </div>
    </div>
    <div class="content-wrapper" >
        <div class="col-sm-12 d-flex justify-content-center">
        <a href="#" class="btn active" data-filter="all">All</a>
        <a href="#" class="btn" data-filter="foods">Foods</a>
        <a href="#" class="btn" data-filter="accessories">Accessories</a>
        <a href="#" class="btn" data-filter="medication"> Medication</a> 
    </div>
    </div>
    <p><?=$total_products?> Products</p>

    <div class="products-wrapper">
        <?php foreach ($products as $product): ?>
        <!--pass the product id through a GET method-->
        <a href="index.php?page=product&id=<?=$product['id']?>" class="product <?=$product['category']?>">
            <img src="imgs/<?=$product['img']?>" width="200" height="200" alt="<?=$product['name']?>">
            <span class="name"><?=$product['name']?></span>
            <span class="price">
                Rs.<?=$product['price']?>
                <?php if ($product['rrp'] > 0): ?>
                <span class="rrp">Rs.<?=$product['rrp']?></span>
                <?php endif; ?>
            </span>
        </a>
        <?php endforeach; ?>
    </div>

    <div class="buttons">
        <?php if ($current_page > 1): ?>
        <a href="index.php?page=products&p=<?=$current_page-1?>">Prev</a>
        <?php endif; ?>
        <?php if ($total_products > ($current_page * $num_products_on_each_page) - $num_products_on_each_page + count($products)): ?>
        <a href="index.php?page=products&p=<?=$current_page+1?>">Next</a>
        <?php endif; ?>
    </div>

</div>

<?=footer()?>