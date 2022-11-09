<?php

// include_once('./header.php');

include_once('./config.php');

$id = $_GET['id'];




$query = "SELECT * FROM instruments WHERE id = '$id'";

$result = mysqli_query($conn, $query);

$instrument = mysqli_fetch_assoc($result);

mysqli_close($conn);


?>

<div class="container-flouid container-details d-flex justify-content-center">
  <div class="card card-details">
    <img src="./assets/images/<?= $instrument['photo'] ?>" width="250px">
    <h4 class="card-title text-light fw-bold text-center mt-3"><?= $instrument['name'] ?></h4>
    <h6 class="card-text text-light mt-3">Released Date : <?= $instrument['brand name'] ?></h6>
    <h6 class="card-text text-light mt-3">Director : <?= $instrument['price'] . ' ' . $instrument['type'] ?></h6>
    <h6 class="card-text text-light mt-3"><b>About</b> : <?= $instrument['description'] ?></h6>
  </div>
</div>
</div>

<?php include_once('./footer.php'); ?>