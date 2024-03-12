<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        #register_frm{
            margin: 10px;
        }
    </style>
</head>
<body>
<h3>Employee Register</h3>
@include('header')
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
<form id="register_frm">
    @csrf
    <input type="text" name="name" id="name" placeholder="Enter Name"><br>
    <span class="error name_err"></span><br><br>
    <input type="number" name="phone_number" id="phone_number" placeholder="Enter Phone no."><br>
    <span class="error phone_number_err"></span><br><br>
    <input type="email" name="email" id="email" placeholder="Enter Email"><br>
    <span class="error email_err"></span><br><br>
    <input type="password" name="password" id="password" placeholder="Enter Password"><br>
    <span class="error password_err"></span><br><br>
    <input type="password" name="password_confirmation" id="password_confirmation" placeholder="Enter Confirm Password"><br>
    <span class="error password_confirmation_err"></span><br><br>
    <input type="submit" value="Register">
</form>
<a href="{{route('signin')}}">Login here</a>
<p class="result"></p>
</body>
<script>
 $('#register_frm').submit(function(event) {
            event.preventDefault();


            var formData = $(this).serialize();
            $.ajax({
                url: "http://localhost/crud_app/public/api/register",
                type: "post",
                data: formData,
                success: function(data) {
                    if (data.msg) {
                        alert("You are registered successfully!!")
                        $('#register_frm')[0].reset();
                        $(".error").text("");
                        $(".result").text(data.msg);
                    } else {
                        printErrorMsg(data);
                    }
                }
            });
        });

        function printErrorMsg(msg) {
            $(".error").text("");
            $.each(msg, function(key, value) {
                if (key == 'password') {
                    if (value.length > 1) 
                    {
                        $('.password_err').text(value[0]);
                        $('c_password_err').text(value[1]);
                    } else {
                        if (value[0].includes('password confirmation')) {
                            $(".password_confirmation_err").text(value);
                        } else {
                            $(".password_err").text(value);
                        }
                    }
                } else {
                    $("." + key + "_err").text(value);
                }
            });
        }
</script>
</html>