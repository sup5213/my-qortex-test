@extends('qortex.layouts.main')
@section('content')
  <div class="container">
    <form class="was-validated" action="{{route('qortex.store')}}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="name" class="form-label">Исполнитель</label>
            <input value='{{old('name')}}' type="text" name="name" class="form-control" id="name">
            @error('name')
            <p class='text-danger'>{{$message}}</p>
            @enderror
        </div>

        <div class="mb-3">
            <label for="alb_name">Альбомы</label>
            <textarea class="form-control is-invalid" id="alb_name" required name="alb_name"></textarea>
            <div class="invalid-feedback">
            Впишите названия каждого альбома и год через тире с новой строки (ex:   Название альбома - 2024).
            </div>
        </div>


        <button type="submit" class="btn btn-primary">Create!</button>
    </form>
  </div>
@endsection
