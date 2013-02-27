<?php
$to      = 'lbailey@mcn.org';
$subject = 'Response to DeAnn Contact Form';
/*$message = $_POST['name'] . 'send you comments.  Reply to ' . $_POST['email'] . ' . ';*/
$message = 'Hello' ;
$headers = 'From: lbailey@mcn.org' . "\r\n" .
    'Reply-To: lbailey@mcn.org' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);
?>

