<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tasks</title>
</head>
<body>
<a href="{{route('add_tasks')}}">Add Task</a>

@if(Session::has('msg'))
    <div class="alert alert-success">
       {{Session::get('msg')}}
    </div>
    @endif
    <table border="1">
        <tr>
            <th>S.No.</th>
            <th>Name</th>
            <th>Start date</th>
            <th>End Date</th>
            <th>Type</th>
            <th>Status</th>
            <th>Action</th>
        </tr>@php $i=1; @endphp
            @foreach($tasks as $key=> $task)
            <tr>
            <td>{{$key+$i}}</td>
            <td>{{$task->name}}</td>
            <td>{{$task->start_date}}</td>
            <td>{{$task->end_date}}</td>
            <td>{{$task->type}}</td>
            <td>{{$task->status}}</td>
            <td><a href="{{route('task_edit',$task->id)}}" style="font-size:17px;padding:5px">Edit</a> <a href="{{route('delete_task',$task->id)}}" style="font-size:17px;padding:5px">Delete</a></td>
            </tr>
            @endforeach
    </table>
    
</body>
</html>