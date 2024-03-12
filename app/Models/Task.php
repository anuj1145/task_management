<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'project_id',
        'module_id',
        'submodule_id',
        'start_date',
        'end_date',
        'type',
        'status'
    ];
}
