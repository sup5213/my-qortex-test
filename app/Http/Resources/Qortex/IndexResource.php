<?php

namespace App\Http\Resources\Qortex;

use Illuminate\Http\Resources\Json\JsonResource;

class IndexResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {

        //return response()->json ([
        //    'id'=>$this->id,
        //    'name'=>$this->name
        //]);
        return parent::toArray($request);
    }
}
