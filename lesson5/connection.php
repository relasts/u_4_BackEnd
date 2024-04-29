<?php
    // $db = new PDO('mysql:host=localhost;dbname=u67404', 'root', '');
    // $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $db = new PDO('mysql:host=localhost;dbname=u67404', 'u67404', '4971288',
    [PDO::ATTR_PERSISTENT => true, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
?>