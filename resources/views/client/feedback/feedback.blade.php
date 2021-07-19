@extends('client.layouts.mainss')
@section('title','Introduce')
@section('content')
    <section class="blog-details-wrap ptb--120 bg__white">
        <div class="container">
            <h3>Để lại thông tin nếu quý khách có bất kỳ thắc mắc nào, chúng tôi sẽ liên hệ với quý khách.<hr></h3>
            {!! Form::open(['route' => 'feedback.store', 'method' => 'post']) !!}
            <div class="form-group col-md-6">
                <label>{{trans('feedback.name')}}:</label>
                {{Form::text('name', '',['class' => 'form-control','placeholder'=>trans('allclient.enter_name')])}}
                <span class="text-danger">{{ $errors->first('name')}}</span>
            </div>
            <div class="form-group col-md-6">
                <label>{{trans('feedback.email')}}:</label>
                {{Form::email('email', '',['class' => 'form-control','placeholder'=>trans('allclient.enter_email')])}}
                <span class="text-danger">{{ $errors->first('email')}}</span>
            </div>
            <div class="form-group col-md-12">
                <label>{{trans('feedback.title')}}:</label>
                {{Form::text('title', '',['class' => 'form-control','placeholder'=>trans('allclient.enter_title')])}}
                <span class="text-danger">{{ $errors->first('title')}}</span>
            </div>
            <div class="form-group col-md-12">
                <label>{{trans('feedback.content')}}:</label>
                {{Form::textarea('content', '',['class' => 'form-control','placeholder'=>trans('allclient.enter_content')])}}
                <span class="text-danger">{{ $errors->first('content')}}</span>
            </div>
            <div class="form-group">
                {{ Form::submit(trans('feedback.save'),['class'=>'btn btn-warning']) }}
            </div>
            {!! Form::close() !!}

        </div>
    </section>
@endsection
@section('script1')
@endsection

