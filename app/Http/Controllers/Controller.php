<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
/**
* @OA\Info(
*   title="Qortex test",
*   version="1.0"
* ),
* @OA\PathItem(
*   path="/api/"
* ),
* @OA\Get(
*   path="/api/artist",
*   summary="Получить список исполнителей",
*   tags={"Исполнители"},
*   @OA\Response(
*       response=200,
*       description="OK",
*       @OA\JsonContent(
*           @OA\Property(property="data", type="array",
*               @OA\Items (
*                   @OA\Property(property="id", type="integer", example=1),
*                   @OA\Property(property="name", type="string", example="Кино"),
*                   @OA\Property(property="created_at", type="timestamp", example=null),
*                   @OA\Property(property="updated_at", type="timestamp", example=null),
*                   @OA\Property(property="deleted_at", type="timestamp", example=null)
*               )
*           )
*       )
*   )
* ),
* @OA\Get(
*   path="/api/albums/{artist}",
*   summary="Получить список альбомов конкретного исполнителя",
*   tags={"Альбомы"},
*   @OA\Parameter(description="id исполнителя",in="path",name="artist",required=true,example=1),
*   @OA\Response(
*       response=200,
*       description="OK",
*       @OA\JsonContent(
*           @OA\Property(property="data", type="array",
*               @OA\Items (
*                   @OA\Property(property="id", type="integer", example=1),
*                   @OA\Property(property="name", type="string", example="Начальник камчатки"),
*                   @OA\Property(property="year", type="integer", example=1984),
*                   @OA\Property(property="artist_id", type="integer", example=1),
*                   @OA\Property(property="created_at", type="timestamp", example=null),
*                   @OA\Property(property="updated_at", type="timestamp", example=null),
*                   @OA\Property(property="deleted_at", type="timestamp", example=null)
*               )
*           )
*       )
*   )
* ),
* @OA\Post(
*   path="/api/albums/create",
*   summary="Создать новый альбом",
*   tags={"Альбомы"},
*   @OA\RequestBody(
*       @OA\JsonContent(
*           allOf={
*               @OA\Schema(
*                   @OA\Property(property="name", type="string", example="Исполнитель песен"),
*                   @OA\Property(property="alb_name", type="string", example="Первый альбом исполнителя песен-2000")
*               )
*           }
*       )
*   ),
*   @OA\Response(
*       response=200,
*       description="OK",
*       @OA\JsonContent(
*           @OA\Property(property="data", type="array",
*               @OA\Items (
*                   @OA\Property(property="name", type="string", example="Первый альбом исполнителя песен"),
*                   @OA\Property(property="year", type="integer", example=2000),
*                   @OA\Property(property="artist_id", type="integer", example=0),
*                   @OA\Property(property="updated_at", type="timestamp", example=null),
*                   @OA\Property(property="created_at", type="timestamp", example=null),
*                   @OA\Property(property="id", type="integer", example=26),
*                   @OA\Property(property="artist_name", type="string", example="Исполнитель песен")
*               )
*           )
*       )
*   )
* ),
* @OA\Get(
*   path="/api/songs/{album}",
*   summary="Получить список песен из альбома",
*   tags={"Песни"},
*   @OA\Parameter(description="id альбома",in="path",name="album",required=true,example=1),
*   @OA\Response(
*       response=200,
*       description="OK",
*       @OA\JsonContent(
*           @OA\Property(property="data", type="array",
*               @OA\Items (
*                   @OA\Property(property="id", type="integer", example=3),
*                   @OA\Property(property="title", type="string", example="Алюминиевые огурцы"),
*                   @OA\Property(property="track_num", type="integer", example=3)
*               )
*           )
*       )
*   )
* ),
* @OA\Post(
*   path="/api/songs",
*   summary="Добавить песни в выбранный альбом",
*   tags={"Песни"},
*   @OA\RequestBody(
*       @OA\JsonContent(
*           allOf={
*               @OA\Schema(
*                   @OA\Property(property="id", type="integer", example=27),
*                   @OA\Property(property="title", type="string", example="1-First song")
*               )
*           }
*       )
*   ),
*   @OA\Response(
*       response=200,
*       description="OK",
*       @OA\JsonContent(
*           @OA\Property(property="data", type="array",
*               @OA\Items (
*                   @OA\Property(property="id", type="integer", example=202),
*                   @OA\Property(property="title", type="string", example="First song"),
*                   @OA\Property(property="created_at", type="timestamp", example=null),
*                   @OA\Property(property="updated_at", type="timestamp", example=null),
*                   @OA\Property(property="deleted_at", type="timestamp", example=null)
*               )
*           )
*       )
*   )
* )
*/

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
