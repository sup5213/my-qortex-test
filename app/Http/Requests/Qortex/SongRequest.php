<?php

namespace App\Http\Requests\Qortex;

use Illuminate\Foundation\Http\FormRequest;

class SongRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'id'=>'integer',
            'artist_id'=>'integer',
            'album_id'=>'integer',
            'title'=>'string',
            'track_num'=>'integer'
        ];
         //'title'=>'string'
    }
}
