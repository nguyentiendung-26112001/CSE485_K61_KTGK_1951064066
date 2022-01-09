<?php
session_start();

if(isset($_POST['btnAdd'])){
    $user=$_POST['txtUserAdd'];
    $sex=$_POST['txtSexAdd'];
    $age=$_POST['txtAgeAdd'];
    $bloodgroup=$_POST['txtBloodGroupAdd'];
    $phone=$_POST['txtPhoneAdd'];

    $conn=mysqli_connect('localhost','root','','blood_management');
    if(!$conn){
        die("Kết nối thất bại. Vui lòng kiểm tra lại các thông tin máy chủ");
    }

    $sql01="SELECT * FROM blood_donor WHERE bd_phno='$phone'";
    $result=mysqli_query($conn,$sql01);

    if(mysqli_num_rows($result) > 0){
        $error="Người này đã có trong danh sách";
        header("location:http://localhost:8080/KTGK(Dung)/add.php?error=$error");
    }
    else{
        $sql="INSERT INTO blood_donor (bd_name,bd_sex,bd_age,bd_bgroup,bd_phno) VALUES ('$user','$sex','$age','$bloodgroup','$phone')";
            $ketqua = mysqli_query($conn,$sql);
            
            if(!$ketqua){
                $error = "Dữ liệu chưa được thêm !";
                header("location: http://localhost:8080/KTGK(Dung)/add.php?error=$error");
            }else{
                header("location: http://localhost:8080/KTGK(Dung)/login_detail.php"); //Chuyển hướng lại Trang Quản trị
            }
            mysqli_close($conn);
    }
}
?>