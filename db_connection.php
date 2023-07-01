<?php 
    $conn = new mysqli("localhost", "root", "YOUR_PASSWORD", "youtube_db");

    if ($conn->connect_error){
        die("Connection failed">$conn->connect_error);
    } 
?>