<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class NgDefect extends Model
{
    /** @use HasFactory<\Database\Factories\NgDefectFactory> */
    use HasFactory;
    use SoftDeletes;

    protected $fillable = ['code', 'description'];

    protected $dates = ['deleted_at'];

}
