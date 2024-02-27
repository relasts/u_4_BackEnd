<?php
    $connection = mysqli_connect("localhost", "u67404", "4971288", "application");
    mysqli_query($connection, "INSERT INTO application (name) VALUE 'bbb'");
    echo mysqli_error($connection);


?>