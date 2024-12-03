<?php

namespace App\Http\Controllers\Qortex;
use App\Http\Controllers\Qortex\MainController;
class CreateController extends MainController
{
    public function __invoke()
    {
        return view('qortex.create');
    }
}
