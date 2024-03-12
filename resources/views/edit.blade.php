<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit</title>
</head>
<body>
   
<form id="register_frm" action="{{route('update',$data->id)}}" method="post">
    @csrf
    <input type="text" name="name" id="name" placeholder="Enter Name" value="{{$data->name}}"><br>
    <span class="error name_err"></span><br><br>
    <input type="text" name="phone_number" id="phone_number" placeholder="Enter Phone no." value="{{$data->phone_number}}"><br>
    <span class="error phone_number_err"></span><br><br>
    <input type="email" name="email" id="email" placeholder="Enter Email" value="{{$data->email}}"><br>
    <span class="error email_err"></span><br><br>
    <input type="submit" value="Update">
</form>
</body>
</html>