<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\Traits\Filterable;

class Album extends Model
{
    use HasFactory;
    use SoftDeletes;
    use Filterable;
    protected $guarded = false;
    public function artist()
    {
        return $this->belongsTo(Artist::class); //belongsTo
    }
    public function songs()
    {
        return $this->belongsToMany(Song::class);
    }
}
