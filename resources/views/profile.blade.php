<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <style>

    </style>
</head>
<body>
@if(Session::has('msg'))
    <div style="color:green">
       {{Session::get('msg')}}
    </div>
@endif

<a href="{{route('task_manage')}}">Manage Tasks</a>
    <table border="1">
        <tr>
            <th>S.No.</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone number</th>
            <th>Action</th>
        </tr>@php $i=1; @endphp
            @foreach($data as $key=> $emp)
            <tr>
            <td>{{$key+$i}}</td>
            <td>{{$emp->name}}</td>
            <td>{{$emp->email}}</td>
            <td>{{$emp->phone_number}}</td>
            <td><a href="{{route('edit',$emp->id)}}" style="font-size:17px;padding:5px">Edit</a> <a href="{{route('delete',$emp->id)}}" style="font-size:17px;padding:5px">Delete</a></td>
            </tr>
            @endforeach
    </table>
    
</body>
</html>