@extends('qortex.layouts.main')
@section('content')
  <div class="container" >
    <div class=mb-3>
        <p class="text-success"> Исполнитель - <b>{{$artist->name}}</b></p>
        <p class="text-success"> Альбом - <b>{{$album->name}} ({{$album->year}}г.)</b> </p>
    </div>
    <table class="table">
        <thead>
            <tr>
              <th scope="col">№ трека</th>
              <th scope="col">Название песни</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($songs as $song)
            <tr>
              <td>{{$song->tr}}</td><td>{{$song->title}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <br>
    <table class="table">
        <thead>
          <tr>
            <th scope="col">Песня</th>
            <th scope="col">Также есть в альбомах</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($songs_collection as $song)
                <tr>
                <td>{{$song->title}}</td>
                <td>
                @foreach ($song->album_in_song as $album)
                     <a href="{{route ('qortex.showsongs', $album)}}"> {{$album->name}} </a><br>
                @endforeach
                </td>
                </tr>
            @endforeach
        </tbody>
    </table>
  <div class=mb-3>
    <a href="{{route ('qortex.index')}}" class='btn btn-primary'> Back</a>
  </div>
  @if (count($songs)==0)
    <div >
        <a href="{{route('qortex.createsongs')}}?id={{(int)$album->id}}" class="btn btn-warning mb-3">Добавить данные</a>
    </div>
  @endif
</div>
@endsection
