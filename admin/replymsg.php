<?php include 'inc/header.php'; ?>
<?php include 'inc/sidebar.php'; ?>

<?php
    if(!isset($_GET['msgid']) || $_GET['msgid'] == NULL) {
        echo "<script>window.location = 'inbox.php';</script>";
    } else {
        $id = $_GET['msgid'];
    }
 ?>

    <div class="grid_10">
    
        <div class="box round first grid">
            <h2>View Message</h2>
            <?php
                if($_SERVER['REQUEST_METHOD'] == 'POST'){
                    $to      = $fm->validation($_POST['toMail']);
                    $from    = $fm->validation($_POST['fromMail']);
                    $subject = $fm->validation($_POST['subject']);
                    $message = $fm->validation($_POST['message']);
                    $sendmail = mail($to, $subject, $message, $from);

                    if($sendmail){
                        echo "<span class='success'>Message Sent Successfully...</span>";
                    }else{
                        echo "<span class='error'>Something Went Wrong !!</span>";
                    }
                }
             ?>

                <div class="block">               
                 <form action="" method="POST">
                    <?php
                        $query = "select * from tbl_contact where id='$id'";
                        $msg = $db->select($query);
                        if($msg){
                            while($result = $msg->fetch_assoc()){
                                
                        ?>
                    <table class="form">
                        <tr>
                            <td>
                                <label>To</label>
                            </td>
                            <td>
                                <input type="text" readonly name="toMail" value="<?php echo $result['email']; ?>" class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>From</label>
                            </td>
                            <td>
                                <input type="text" name="fromMail" placeholder="Please Enter Your Email Address !!" class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Subject</label>
                            </td>
                            <td>
                                <input type="text" name="subject" placeholder="Please Enter Your Subject !!" class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Message</label>
                            </td>
                            <td>
                                <textarea class="tinymce" name = "message">
                                    
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Send" />
                            </td>
                        </tr>
                    </table>
                    <?php } } ?>
                    </form>
                </div>
            </div>
        </div>

    <!-- Load TinyMCE -->
    <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setupTinyMCE();
            setDatePicker('date-picker');
            $('input[type="checkbox"]').fancybutton();
            $('input[type="radio"]').fancybutton();
        });
    </script>

<?php include 'inc/footer.php'; ?>
