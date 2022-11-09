<?php
include_once('./config.php');


$query = "SELECT * FROM instruments";

$result = mysqli_query($conn, $query);
$instruments = mysqli_fetch_all($result, MYSQLI_ASSOC);
?>


<div class="container-flouid ">
  <?php foreach ($instruments as $instrument) : ?>
    <div class="container">
      <div class="card card-instrument ">
        <div class="d-flex">
          <img src="./assets/images/<?= $instrument['photo'] ?>" width=" 200px">
          <div class="d-flex row p-4">
            <h3><?= $instrument['name'] ?></h3>

            <div><?= strlen($instrument['description']) > 30 ? substr($instrument['description'], 0, 30) . '...' : $instrument['description'] ?></div>
            <div><?= $instrument['price'] ?></div>
            <div><a href="./details-instrument.php/?id=<?= $instrument['id']; ?>">see more</a></div>

          </div>
        </div>
      </div>
    </div>
</div>
</div>

<?php endforeach; ?>