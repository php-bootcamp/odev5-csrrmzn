<?php

include "header.php";

?>


<h3>JSON İçe Aktarma</h3>
<hr>

<form action="lib/user-operations.php" method="POST" enctype="multipart/form-data">

    <div class="form-group">
        <div class="col-md-3">
            <label for="exampleInputEmail1">JSON Dosyası Yükle</label>
        </div>
        <div class="col-md-6">
            <input type="file" class="form-control" name="jsonFile">
        </div>
    </div>

    <div align="right" class="col-md-6">
        <button type="submit" class="btn btn-primary" name="importJson">JSON Dosyası Yükle</button>
    </div>

</form>



<?php

include "footer.php";

?>