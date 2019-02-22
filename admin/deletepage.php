<?php 
    include '../lib/Session.php'; 
    Session::checkSession();
?>
<?php include '../config/config.php'; ?>
<?php include '../lib/Database.php'; ?>

<?php
    $db = new Database();
?>

<?php
    if(!isset($_GET['deletepage']) || $_GET['deletepage'] == NULL) {
        echo "<script>window.location = 'index.php';</script>";
    } else {
        $pageid = $_GET['deletepage'];
        $delquery = "delete from tbl_page where id = '$pageid'";
        $delData = $db->delete($delquery);
        if($delData) {
        	echo "<script>alert('Page Deleted Successfully ...') </script>";
        	echo "<script>window.location = 'index.php';</script>";
        } else {
        	echo "<script>alert('Page Not Deleted ...') </script>";
        	echo "<script>window.location = 'index.php';</script>";
        }
    }
 ?>