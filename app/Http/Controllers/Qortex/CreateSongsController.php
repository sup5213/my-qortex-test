<?php

namespace App\Http\Controllers\Qortex;
use App\Models\Album;
use App\Http\Requests\Qortex\AlbumRequest;
use App\Http\Resources\Qortex\SongResource;
use App\Http\Controllers\Qortex\MainController;

class CreateSongsController extends MainController
{
    public function __invoke(AlbumRequest $request)
    {
        $data=$request->validated();
        $alb=Album::find($data)->all();
        $album=$alb[0];
        if ($request->is('api/*')) {
            return new SongResource($album);
        }else {
            return view('qortex.createsongs', compact('album'));
        }
    }
}
