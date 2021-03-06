@extends('admin.layouts.main')
@section('title','Trả lời phản hồi')
@section('content')
<div class="animated fadeIn">
  <div class="card">
    <div class="card-header">
      <strong class="font-weight-bold">
       Trả lời phản hồi {{ $feedback->title }}
      </strong>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-md-5">
          <div class="form-group">
            <p class="font-weight-bold">Họ và tên: {{ $feedback->title }}</p>
          </div>
          <div class="form-group">
            <p class="font-weight-bold">{{trans('feedback.email')}}: {{ $feedback->email }}</p>
          </div>
          <div class="form-group">
            <p class="font-weight-bold">Nội dung phản hồi: {{ $feedback->content }}</p>
          </div>
        </div>
        <div class="col-md-7">
          @if($feedback->reply_by)
          <div class="form-group">
            <label>Người trả lời: </label>
            <p class="text-info">{{ $feedback->reply }}</p>
            <p><i>Nội dung {{ $feedback->reply_by }}</i></p>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer">
      <a class="btn btn-outline-secondary" href="{{route('feedback.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
    </div>
    @else
    {{ Form::open(['route' => ['feedback.update',$feedback->id], 'method' => 'put']) }}
    <div class="form-group">
      <p class="font-weight-bold">Reply: </p>
      {{ Form::textarea('reply', null, ['class' => 'form-control','placeholder'=> trans('placeholder.reply') ]) }}
    </div>
  </div>
</div>
</div>
<div class="card-footer">
  {{ Form::submit('Trả lời',['class' => 'btn btn-primary']) }}
  <a class="btn btn-outline-secondary" href="{{route('feedback.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
</div>
{{ Form::close() }} 
@endif
</div>
</div>
@endsection
@section('script')
@include('admin.shared.scrip')
@include('admin.shared.notification')
@endsection
