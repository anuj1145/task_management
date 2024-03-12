<h3>Employee Login</h3>
@include('header')
<title>Login Form</title>
<style>
    span {
        color: red;
    }
    .result
    {
     color: red;
    }

    #login_frm{
            margin: 10px;
        }
</style>
@if(Session::has('msg'))
    <div class="alert alert-danger">
       {{Session::get('msg')}}
    </div>


@elseif(Session::has('fail'))
    <div class="alert alert-danger">
       {{Session::get('fail')}}
    </div>
@endif
<form id="login_frm">
    @csrf
    <input type="email" name="email" id="email" placeholder="Enter Email"><br>
    <span class="error email_err"></span><br><br>
    <input type="text" name="password" id="password" placeholder="Enter Password"><br>
    <span class="error password_err"></span><br><br>
    <input type="submit" value="Login">
</form>
<p class="result"></p>
<script>
    $(document).ready(function() {
        $('#login_frm').submit(function(event) {
            event.preventDefault();

            var formData = $(this).serialize();
            $.ajax({
                url: "http://localhost/crud_app/public/api/login",
                type: "post",
                data: formData,
                success: function(data) {
                    //console.log(data.success);
                    if (data.success == 'false') {
                        // alert(112)
                        $(".error").text(data);
                        $(".result").text(data.message);
                    } 
                    else if(data.success == 'true')
                    {
                        // alert(111)
                        localStorage.setItem("user_token",data.token_type+" "+data.access_token);
                        window.open("http://localhost/crud_app/public/profile");
                    }
                    else {
                       // alert(113)
                        // $(".error").text(data);
                        // $(".result").text(data.message);
                        printErrorMsg(data);
                    }
                }
            });
        });

        function printErrorMsg(msg) {
            $(".error").text("");
            $.each(msg, function(key, value) {
                    $("." + key + "_err").text(value);
            });
        }
    });
</script>