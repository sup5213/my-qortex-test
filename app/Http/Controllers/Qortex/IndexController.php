<?php

namespace App\Http\Controllers\Qortex;
use App\Http\Resources\Qortex\IndexResource;
use App\Models\Artist;
use App\Http\Requests\Qortex\IndexRequest;
use App\Http\Controllers\Qortex\MainController;
use App\Http\Filters\ArtistFilter;

class IndexController extends MainController
{
    public function __invoke(IndexRequest $request)
    {
        $data=$request->validated();
        $filter=app()->make(ArtistFilter::class, ['queryParams'=>array_filter($data)]);
        $artists=Artist::filter($filter)->get();
         //->paginate(5);
        if ($request->is('api/*')) {
           // dd ($artists);
            //return new IndexResource($artists);
            return IndexResource::collection($artists);
        }else {
            return view('qortex.index', compact('artists'));
        }

        //$artists=Artist::all();
        //$artists=Artist::paginate(5);
        // return view('qortex.index', compact('artists'));
    }
}
