<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Employee;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Exception;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\RateLimiter;
use App\Models\Task;
use App\Models\Module;
use App\Models\SubModule;
use Illuminate\Support\Facades\DB;


class PassportAuthController extends Controller
{
    public function register(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'name' => 'required',
            'phone_number' => 'required',
            'email' => 'required|email',
            'password' => 'required|confirmed'
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }
        $user = Employee::create([
            'name' => $req->name,
            'phone_number' => $req->phone_number,
            'email' => $req->email,
            'password' => Hash::make($req->password)
        ]);
        return response()->json([
            'msg' => "You are registered successfully",
            'user' => $user
        ]);
    }
 
    
    public function login(Request $request)
    {
        $this->checkTooManyFailedAttempts();
        $user = Employee::where('email', $request->email)->first();
        // dd($user);
        try {
            $credentials = request(['email', 'password']);
            // dd($credentials);
            if (Auth::attempt($credentials))
            {
                RateLimiter::hit($this->throttleKey(), $seconds = 120);

                return response()->json([
                    'status_code' => 401,
                    'message' => 'Unauthorized access',
                ]);
            }

            elseif (!Hash::check($request->password, $user->password, [])) {
                throw new Exception('Error occured while logging in.');
            }
           
                $token = $user->createToken('authToken')->plainTextToken;
                // $token = auth()->user()->createToken('LaravelAuthApp')->accessToken;
                RateLimiter::clear($this->throttleKey());
    
                return response()->json([
                    'status_code' => 200,
                    'success' => 'true',
                    'access_token' => $token,
                    'token_type' => 'Bearer',
                    'user' => $user,
                ]);
        
           // $token = auth()->user()->createToken('LaravelAuthApp')->accessToken;
          

           // return view('profile',compact('data'));
        } catch (Exception $error) {
            return response()->json([
                'status_code' => 500,
                'message' => 'Error occured while loggin in.',
                'error' => $error,
            ]);
        }
    }

    /**
     * Get the rate limiting throttle key for the request.
     *
     * @return string
     */
    public function throttleKey()
    {
        return Str::lower(request('email')) . '|' . request()->ip();
    }

    /**
     * Ensure the login request is not rate limited.
     *
     * @return void
     */
    public function checkTooManyFailedAttempts()
    {
         if (! RateLimiter::tooManyAttempts($this->throttleKey(), 5)) {
             return;
          }
            throw new Exception("Too many login attempts, Login blocked for 2 minutes..");
    }

    public function profile()
    {
        $data=Employee::all();
        return view('profile',compact('data'));
    }

    public function edit(Request $request){
        $id=$request->id;
        $data = Employee::findOrFail($id);
       return view('edit',compact('data'));
    }
    public function update(Request $request,$id){
        $data = Employee::findOrFail($id);
        $data->update($request->all());
        return redirect()->route('profile')->with('msg',"Data updated successfully");
    }

    public function delete(Request $request){
        $id=$request->id;
        $data=Employee::where('id',$id)->first();
        $data->delete();
        return redirect()->back()->with("msg","Your data is deleted");
    }

   
    public function manage_task()
    {
        $tasks=Task::all();
        return view('tasks',compact('tasks'));
    }

    public function add_task()
    {
        return view('add_tasks');
    }

    public function save_task(Request $req)
    {
        $module_id=Module::where('project_id',$req->project_id)->select('id')->get()->toArray();
        $mod_id=array_values($module_id)[0]['id'];
        $submodule_id=SubModule::where('module_id',$mod_id)->select('id')->get()->toArray();
        $submod_id=array_values($submodule_id)[0]['id'];

         //dd($submod_id);
        $tasks = Task::create([
            'name' => $req->name,
            'project_id' => $req->project_id,
            'module_id' => $mod_id,
            'submodule_id' => $submod_id,
            'start_date' => $req->start_date,
            'end_date' => $req->end_date,
            'type' => $req->type,
            'status' => $req->status
        ]);
        return redirect()->route('task_manage')->with('msg',"Your task has been added!");
    }

    public function show_modules(Request $req)
    {
       $id= $req->id;
       $modules = Module::where('project_id',$id)->select('name')->first();
       $rtn_data="";
       $modules=$modules->toArray();
      //dd($modules);
      $rtn_data .= "<option value=''>Select Module</option>";
       foreach($modules as $key=>$data){
        $rtn_data .= "<option value=\"" . $data . "\">" . $data . "        </option>";
        }
        echo $rtn_data;

    }

    public function show_submodules(Request $req)
    {
       $id= $req->id;
    //    $sub_modules = SubModule::where('module_id',$id)->select('id')->first();
    $sub_modules=DB::table('modules as m')
        ->join('sub_modules as sm', 'm.project_id', '=', 'sm.project_id')
        ->where('m.name', $id)
        ->select('sm.name')
        ->first();
       
       $rtn_data="";
    //    $sub_modules=$sub_modules->toArray();
      //dd($sub_modules);
      $rtn_data .= "<option value=''>Select SubModule</option>";
       foreach($sub_modules as $key=>$data){
       
        $rtn_data .= "<option value=\"" . $data . "\">" . $data . "        </option>";
        }
    echo $rtn_data;
    }

    public function delete_task(Request $request)
    {
        $id=$request->id;
        $data=Task::where('id',$id)->first();
        $data->delete();
        return redirect()->back()->with("msg","Your task is deleted");
    }

    public function edit_task(Request $request)
    {
        $id=$request->id;
        $data = Task::findOrFail($id);
       return view('edit_tasks',compact('data'));
    }

    public function update_task(Request $request,$id){
        $data = Task::findOrFail($id);
        $data->update($request->all());
        return redirect()->route('task_manage')->with('msg',"Data updated successfully");
    }
}
