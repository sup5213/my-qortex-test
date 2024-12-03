@extends('qortex.layouts.main')
@section('content')
  <div class="container">
    <p class="text-success"><b>{{$artist->name}}</b></p>
    @foreach ($albums as $album)
    <div class=mb-3>
        <a href="{{route ('qortex.showsongs', $album)}}"> {{$album->name}}</a>&emsp;{{$album->year}}г.
    </div>
    @endforeach
  <div>
    <a class='btn btn-primary' href="{{route ('qortex.index')}}">Back</a>
  </div>
</div>
@endsection
