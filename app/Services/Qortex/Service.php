<?php

namespace App\Services\Qortex;

use App\Models\Album;

class Service
{
   public function showsong(Album $album)
   {
        $songs_collection = collect();
        $data_track_album=[];
        $artist=$album->artist;
        $songs=$album->songs; //тут все песни из одного альбома!
        $the_album=$album->id;
        foreach ($songs as $song) {
            $another_albums=$song->album_in_song;
            $i=0;
            foreach ($song->tracks as $track) {
                $data_track_album[][$song->id]=['track'=>$track->getOriginal()['pivot_track_num'], 'album_id'=>$another_albums[$i]->id];
                if ($the_album==$another_albums[$i++]->id)
                {
                    $song->tr=$track->getOriginal()['pivot_track_num'];
                }
            }
            if (sizeof($another_albums)>1) {
                $songs_collection->push($song);
            }
        }
        $songs=$songs->sortBy('tr');
        $data=[];
        $data['songs']=$songs;
        $data['songs_collection']=$songs_collection;
        $data['data_track_album']=$data_track_album;
        $data['artist']=$artist;
        return ($data);
    }
}
