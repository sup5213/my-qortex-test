<?php

namespace App\Http\Controllers\Qortex;

use App\Models\Album;
use App\Http\Filters\AlbumFilter;
use App\Http\Requests\Qortex\AlbumRequest;
use App\Http\Resources\Qortex\SongResource;
use App\Http\Controllers\Qortex\MainController;

class ShowSongsController extends MainController
{
    public function __invoke(AlbumRequest $request, Album $album)//AlbumRequest $request
    {
        $data=$request->validated();
        if (!empty($data) && isset($album)){
            //dd($data);
            $filter=app()->make(AlbumFilter::class, ['queryParams'=>array_filter($data)]);
            $alb=Album::filter($filter)->get();
            //->find($data);
            $album=$alb[0];
           // dd($album);
        }
        $show_data=$this->service->showsong($album);
        $songs=$show_data['songs'];
        $songs_collection=$show_data['songs_collection'];
        $data_track_album=$show_data['data_track_album'];
        $artist=$show_data['artist'];
        if ($request->is('api/*')) {
            return SongResource::collection($songs);
        }else {
            return view('qortex.showsongs',
        compact ('songs','songs_collection', 'album', 'artist'));
        }
    }
}

