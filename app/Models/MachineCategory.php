<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class MachineCategory extends Model
{
    use HasFactory;
    use SoftDeletes;


    protected $fillable = ['code', 'name', 'description'];

    // optional: kalau kamu pakai timestamps
    protected $dates = ['deleted_at'];

    public function machines()
    {
        return $this->hasMany(Machine::class);
    }

    public function processes()
    {
        return $this->hasMany(Process::class);
    }
}
