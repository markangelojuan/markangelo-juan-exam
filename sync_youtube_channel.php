<?php

require_once 'db_connection.php';

$api_key = 'AIzaSyDa6KGG7ZYa3Wu2NKatiKxTL6WgL14abkk';
$youtube_channel_id = 'UCWJ2lWNubArHWmf3FIHbfcQ';
$base_url = 'https://www.googleapis.com/youtube/v3/';
$maxResult = 100;

$get_video_url = $base_url . "search?order=date&part=snippet&channelId=" . $youtube_channel_id . "&maxResults=" . $maxResult . "&key=" . $api_key;
$videos = json_decode(file_get_contents($get_video_url));


$get_channel_url =  $base_url . 'channels?part=snippet&id=' . $youtube_channel_id . '&key=' . $api_key;
$channels = json_decode(file_get_contents($get_channel_url));

foreach ($videos->items as $video) {
    $existingVideos = "SELECT * FROM youtube_channel_videos WHERE video_link = ?";
    $existingVideoStmt = $conn->prepare($existingVideos);
    $existingVideoStmt->bind_param("s", $video->id->videoId);
    $existingVideoStmt->execute();
    $existingVideoResult = $existingVideoStmt->get_result();
    $existingVideoStmt->close();

    if ($existingVideoResult->num_rows === 0) {
        $videosQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail, publish_date) VALUES (?, ?, ?, ?, STR_TO_DATE(?, '%Y-%m-%dT%H:%i:%sZ'))";
        $insertVideosStmt = $conn->prepare($videosQuery);
        $insertVideosStmt->bind_param("sssss", $video->id->videoId, $video->snippet->title, $video->snippet->description, $video->snippet->thumbnails->high->url, $video->snippet->publishedAt);
        $insertVideosStmt->execute();
        $insertVideosStmt->close();
    }
}

if (isset($channels->items) && count($channels->items) > 0) {
    $channel = $channels->items[0]->snippet;

    $profile_picture = $channel->thumbnails->high->url;
    $name = $channel->title;
    $description = $channel->description;

    if ($name !== "NBA"){
        $channelQuery = "INSERT INTO youtube_channels (id, profile_picture, name, description) VALUES (?, ?, ?, ?)";
        $insertChannelStmt = $conn->prepare($channelQuery);
        $insertChannelStmt->bind_param("ssss", $name ,$profile_picture, $name, $description);
        $insertChannelStmt->execute();
        $insertChannelStmt->close();
    }
} 

?>