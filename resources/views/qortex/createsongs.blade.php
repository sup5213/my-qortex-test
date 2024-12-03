@extends('qortex.layouts.main')
@section('content')
  <div class="container">
    <p>Альбом - {{$album->name}}</p>
    <form class="was-validated" action="{{route('qortex.storesongs')}}?id={{(int)$album->id}}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="title">Песни</label>
            <textarea class="form-control is-invalid" id="title" required name="title"></textarea>
            <div class="invalid-feedback">
            Впишите номер трека и название каждой песни с новой строки (ex: 1-Название).
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Create!</button>
    </form>
  </div>
@endsection
