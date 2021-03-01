<?php

include "lib/dbConnect.php";



$output = [];

$products = $db->prepare("SELECT * FROM product");
$products->execute();
$productsGet = $products->fetchAll(PDO::FETCH_OBJ);

foreach ($productsGet as $product) {
    
    $categories = $db->prepare("SELECT category_uniqid, category_name FROM category WHERE category_id =".$product->category_id);
    $categories->execute();
    $categoriesGet = $categories->fetchAll(PDO::FETCH_OBJ);

    $output[] = [
        "uniqid" => $product->product_uniqid,
        "name" => $product->product_name,
        "price" => $product->product_price,
        "description" => $product->product_description,
        "content" => $product->product_content,
        "category" => $categoriesGet
    ];
}


// var_dump($categoriesGet);


header("Content-Disposition: attachment; filename=products.json");
header("Content-Type: application/json");
echo json_encode($output, JSON_PRETTY_PRINT);