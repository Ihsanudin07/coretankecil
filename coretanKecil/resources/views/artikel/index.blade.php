@extends('artikel/template/app')

@isset($kategori_pilih)
    @section('title')
        Kategori : {{ $kategori_pilih->nama }}
    @endsection
    @section('kategori','active')
@endisset 

@isset($author_pilih)
    @section('title')
        Author : {{ $author_pilih->name }}
    @endsection
    @section('author','active')
@endisset 

@isset($home)
    @section('title','Semua Post')  
    @section('home','active')
@endisset

@section('content')
    <div id="carouselExampleIndicators" class="carousel slide mt-4" data-ride="carousel">
        <ol class="carousel-indicators">
            @foreach ($banner as $row)
            <li data-target="#carouselExampleIndicators" data-slide-to="{{ ($loop->index) }}" class="{{ ($loop->first)?'active' : '' }}"></li>
            @endforeach
        </ol>
    <div class="carousel-inner">
        @foreach ($banner as $row)
            <div class="carousel-item {{ ($loop->first) ?'active' : '' }}">
                <a href="/artikel-banner/{{ $row->slug }}"><img src="/upload/banner/{{ $row->sampul }}" height="400px" class="d-block w-100" alt="..."></a>
                <div class="carousel-caption d-none d-md-block">
                    <h3>{{ $row->judul }}</h3>
                </div>
            </div>
        @endforeach
    </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>

    <h2 class="my-4 text-center">@yield('title')</h2>

    <div class="row mt-4 mb-4">
        @foreach ($artikel as $row)
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm">
                    <a href="/{{ $row->slug }}"><img src="/upload/post/{{ $row->sampul }}" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                    <h5 class="card-title">{{ $row->judul }}</h5>
                    <p class="card-text"><small class="text-muted">{{ $row->created_at->diffForHumans() }}</small></p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <div class="d-flex justify-content-center mt-4 mb-4">{{ $artikel->links() }}</div>
    
@endsection