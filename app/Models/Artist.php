<?php

namespace App\Models;
use App\Models\Traits\Filterable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Artist extends Model
{
    use HasFactory;
    use SoftDeletes;
    use Filterable;
    protected $guarded = false;
    public function albums_in_artist()
    {
        return $this->hasMany(Album::class);
    }
}
