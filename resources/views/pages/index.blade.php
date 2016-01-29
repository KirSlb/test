@extends('layouts.default')

@section('content')

    @foreach($slides as $slide)
        <img src="/uploads/slides/small/{{$slide->image}}" alt="">
    @endforeach

@stop