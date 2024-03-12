<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add tasks</title>
 
</head>
<body>
<form action="{{route('save_task')}}" method="get">
    <input type="text" name="name" id="name" placeholder="Enter task name"><br><br>
    <select name="project_id" id="project_id" onchange="show_modules()">
        <option value="">Select Project</option>
        <option value="1">Banner design and development</option>
        <option value="2">CRM design</option>
    </select><br><br>

    <select id="module_id" name="module_id" onchange="show_submodules()">

    </select>
    <br><br> 

    <select id="submodule_id" name="submodule_id">

    </select>
    <br><br> 


    <input type="date" name="start_date" id="start_date" placeholder="Enter start date"><br><br>
    <input type="date" name="end_date" id="end_date" placeholder="Enter end date"><br><br>
    <select name="type" id="type">
        <option value="">Select</option>
        <option value="general">General</option>
        <option value="development">Development</option>
        <option value="bug">Bug</option>
        <option value="change_request">Change Request</option>
    </select>
    <br><br>
    <select name="status" id="status">
        <option value="">Select</option>
        <option value="todo">Todo</option>
        <option value="running">Running</option>
        <option value="complete">Complete</option>
    </select><br><br>
    <input type="submit" name="save" value="Add">
</form>
</body>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
    function show_modules()
    {
        var id = $('#project_id').val();
 
        $.ajax({
            type: "get",
            url: "{{route('show_modules')}}",
            data: {id:id},
            success: function(response){
                $('#module_id').html(response);
            }

        });
    }

    function show_submodules()
    {
        var id = $('#module_id').val();
        //alert(id);
        $.ajax({
            type: "get",
            url: "{{route('show_submodules')}}",
            data: {id:id},
            success: function(response){
                $('#submodule_id').html(response);
            }

        });
    }
</script>
</html>