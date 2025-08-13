<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Machine extends Model
{
    use HasFactory;

    use SoftDeletes;

    protected $fillable = ['code', 'name', 'machine_category_id', 'warehouse', 'is_active'];

    // optional: kalau kamu pakai timestamps
    protected $dates = ['deleted_at'];

    public function category()
    {
        return $this->belongsTo(MachineCategory::class, 'machine_category_id');
    }
}

