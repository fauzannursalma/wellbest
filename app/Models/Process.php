<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Process extends Model
{
    /** @use HasFactory<\Database\Factories\ProcessFactory> */
    use HasFactory;
    use SoftDeletes;

    protected $fillable = ['code', 'name', 'machine_category_id', 'order'];

    public function category()
    {
        return $this->belongsTo(MachineCategory::class, 'machine_category_id');
    }
}
