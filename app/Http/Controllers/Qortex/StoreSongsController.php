<?php

namespace App\Http\Controllers\Qortex;
use App\Models\Song;

use App\Models\Album;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\Qortex\IndexResource;
use App\Http\Controllers\Qortex\MainController;
use App\Http\Requests\Qortex\StoreSongsRequest;

class StoreSongsController extends MainController
{
    public function __invoke(StoreSongsRequest $request)
    {
        $data=$request->validated();
        $songs_arr=[];
        $songs_col=[];
        $ids=[];
        $sngb_arr = explode("\n", $data['title']);
        foreach ($sngb_arr as $sng)
        {
            $songs_arr[]=preg_replace('/[[:cntrl:]]/', '', $sng);
        }
        foreach ($songs_arr as $sng)
        {
            $song_ = explode("-", $sng);
            $songs_col[]=['track_num' => $song_[0], 'title'=>$song_[1]];
        }
        foreach ($songs_col as $sng)
        {
            $sng_already_is=Song::where('title', $sng['title'])->first();
            if ($sng_already_is!=null) {
                DB::table('album_song')->insert([
                    'album_id' => $data['id'],
                    'song_id' => $sng_already_is->id,
                    'track_num'=>$sng['track_num'],
                ]);
                $ids[]=$sng_already_is->id;
            } else {
                $sng_ids=Song::create(['title'=>$sng['title']] );
                DB::table('album_song')->insert([
                    'album_id' => $data['id'],
                    'song_id' => $sng_ids->id,
                    'track_num'=>$sng['track_num'],
                ]);
                $ids[]=$sng_ids->id;
            }
        }
        $last_k=array_key_last($ids);
        $ret_sngs=Song::whereBetween('id', [$ids[0], $ids[$last_k]])->get();
        if ($request->is('api/*')) {
            return IndexResource::collection($ret_sngs);
         }else {
            return redirect()->route('qortex.index');
        }
    }
}



