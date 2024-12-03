<?php

namespace App\Models;

use App\Models\Album;
use App\Models\Traits\Filterable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Song extends Model
{
    use HasFactory;
    use SoftDeletes;
    use Filterable;
    protected $guarded = false;
    public function album_in_song ()
    {
        return $this->belongsToMany(Album::class); //belongsToMany
        //hasOne belongsToMany hasMany
    }
    public function tracks ()
    {
        return $this->belongsToMany(Song::class, 'album_song', null,'track_num');
    }
    public $tr=0; //track nums
}
