@extends('layouts.default')

@section('content')

    @foreach($projects as $id=>$project)
        @if(($id%2)==0)
            @include('partials.project_odd')
        @else
            @include('partials.project_even')
        @endif
    @endforeach

@stop