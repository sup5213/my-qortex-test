<?php

namespace App\Http\Controllers\Qortex;
use App\Models\Album;
use App\Models\Artist;
use App\Http\Filters\AlbumFilter;
use App\Http\Requests\Qortex\AlbumRequest;
use App\Http\Resources\Qortex\AlbumResource;
use App\Http\Controllers\Qortex\MainController;

class ShowController extends MainController
{
    public function __invoke(AlbumRequest $request, Artist $artist)//Artist $artist
    {
        $data=$request->validated();
        if (!empty($data) && isset($artist)){
            $filter=app()->make(AlbumFilter::class, ['queryParams'=>array_filter($data)]);
            $albums=Album::filter($filter)->get();
        } else {
            $albums=Album::where('artist_id',$artist->id)->get();
        }
        if ($request->is('api/*')) {
            return AlbumResource::collection($albums);
        } else {
            return view('qortex.show', compact ('artist','albums'));
        }
        //return view('qortex.show', compact ('artist','albums'));
    }
}

