@extends('qortex.layouts.main')
@section('content')
  <div class="container">
    <div >
        <a href="{{route('qortex.create')}}" class="btn btn-warning mb-3">Добавить данные</a>
    </div>
    @foreach ($artists as $artist)
    <div class="mb-3">
        <a href="{{route ('qortex.show', $artist)}}"> {{$artist->id}}. {{$artist->name}} </a>
    </div>
    @endforeach
    <!-- <div class="mb-3">  //$artists->links()  </div> -->

</div>
@endsection
