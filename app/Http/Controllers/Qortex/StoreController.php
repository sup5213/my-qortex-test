<?php

namespace App\Http\Controllers\Qortex;
use App\Models\Album;
use App\Models\Artist;
use App\Http\Requests\Qortex\StoreRequest;
use App\Http\Resources\Qortex\IndexResource;
use App\Http\Controllers\Qortex\MainController;

class StoreController extends MainController
{
    public function __invoke(StoreRequest $request)
    {

        $data=$request->validated();
        $albums_arr=[];
        $albums_col=[];
        $alb_arr = explode("\n", $data['alb_name']);
        foreach ($alb_arr as $alb)
        {
            $albums_arr[]=preg_replace('/[[:cntrl:]]/', '', $alb);
        }
        foreach ($albums_arr as $alb)
        {
            $album_ = explode("-", $alb);
            $albums_col[]=['name' => $album_[0], 'year'=>$album_[1], 'artist_id'=>0];
        }
        $art=Artist::create(['name'=>$data['name']]);
        foreach ($albums_col as $alb)
        {
            $return_alb=Album::create(['name'=>$alb['name'], 'year'=>$alb['year'], 'artist_id'=>$art->id] );
        }
        if ($request->is('api/*')) {
            $tmp=$art->toArray();
            $tmp['artist_name'] = $tmp['name'];
            unset($tmp['name']);
            $postman=collect($albums_col);
            $postman->push($tmp);
            return IndexResource::collection($postman);
            //return IndexResource::make($return_alb);
        }else {
            return redirect()->route('qortex.index');
        }
    }
}



