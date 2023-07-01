<?php

require_once 'db_connection.php';

$videos = array();
$result = $conn->query('SELECT * FROM youtube_channel_videos ORDER BY id LIMIT 100');

while ($row = $result->fetch_assoc()) {
    $videos[] = $row;
}
$channel = array();
$channelResult = $conn->query('SELECT * FROM youtube_channels LIMIT 1');

if ($channelResult->num_rows > 0) {
    $channel = $channelResult->fetch_assoc();
}

$json = array(
    'videos' => $videos,
    'channel' => $channel,
);

$json = json_encode($json, JSON_PRETTY_PRINT);
file_put_contents('youtube_channel.json', $json, LOCK_EX);

?>
