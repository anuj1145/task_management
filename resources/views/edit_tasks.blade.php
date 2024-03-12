<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit task</title>
</head>
<body>
<form id="register_frm" action="{{route('update_task',$data->id)}}" method="post">
    @csrf
<input type="text" name="name" id="name" placeholder="Enter task name" value="{{$data->name}}"><br><br>
    <input type="date" name="start_date" id="start_date" placeholder="Enter start date" value="{{$data->start_date}}"><br><br>
    <input type="date" name="end_date" id="end_date" placeholder="Enter end date" value="{{$data->end_date}}"><br><br>
    <select name="type" id="type" value="{{$data->type}}">
        <option value="">Select</option>
        <option value="general">General</option>
        <option value="development">Development</option>
        <option value="bug">Bug</option>
        <option value="change_request">Change Request</option>
    </select>
    <br><br>
    <select name="status" id="status" value="{{$data->status}}" >
        <option value="">Select</option>
        <option value="todo">Todo</option>
        <option value="running">Running</option>
        <option value="complete">Complete</option>
    </select><br><br>
    <input type="submit" name="save" value="Update">
</form>
    
</body>
</html>