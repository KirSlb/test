@extends('layouts.default')

@section('content')

    <h1>Список публикаций в блог</h1>
    @foreach($records as $item)
        <div class="row">
            <div class="col-md-2">
                <img src="/uploads/blog/small/{{$item->image}}" alt=""/>
            </div>
            <div class="col-md-10">
                <h2>{{$item->title}}</h2>
                <div class="content">
                    {!! mb_substr(strip_tags($item->body),0,200) !!}...
                </div>
                <a href="/blog/{{$item->slug}}">Читать больше</a>
            </div>
        </div>
    @endforeach
    @include('partials.paginate', ['pager'=>$records])
@stop