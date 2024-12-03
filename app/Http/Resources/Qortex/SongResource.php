<?php

namespace App\Http\Resources\Qortex;

use Illuminate\Http\Resources\Json\JsonResource;

class SongResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        //dd($request);
        return [
            'id' => $this->id,
            'title' => $this->title,
            'track_num'=> $this->tr
        ];
        //response()->json (
        //parent::toArray($request);
    }
}
