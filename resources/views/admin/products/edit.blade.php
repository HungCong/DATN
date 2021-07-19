@extends('admin.layouts.main')
@section('title','Cập nhật sản phẩm')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card ">
        <div class="card-header">
          <strong class="card-title">Cập nhật sản phẩm {{ $product->name }}</strong>
        </div>
        <div class="card-body">
          {{ Form::open(['route' => ['product.update',$product->id], 'method' => 'put','enctype '=>'multipart/form-data']) }}
          <input type="hidden" name="id" value="{{$product->id}}" placeholder="">
          <div class="form-group row">
            <div class="col-md-7 row">
              <div class="col-md-12 mb-1">
                {{ Form::label('Tên sản phẩm','',['class' => 'font-weight-bold']) }}
                {{ Form::text('name', $product->name, ['class' => 'form-control','placeholder'=> 'Xin nhập tên sản phẩm...'  ]) }}
                <span class="text-danger">{{ $errors->first('name')}}</span>
              </div>
              <div class="col-md-12 mb-1">
                {{ Form::label('Loại sản phẩm','',['class' => 'font-weight-bold']) }}
                {{Form::select('product_type_id ',$productTypes,$product->product_type_id ,['class' => " form-control",'placeholder'=>'Chọn loại sản phẩm...'])}}
                <span class="text-danger">{{ $errors->first('new_type_id')}}</span>
              </div>
              <div class="col-md-6 mb-1">
                {{ Form::label('Trạng thái','',['class' => 'font-weight-bold']) }}
                {{ Form::select('status', array('0' => 'Hiển thị', '1' => 'Không hiển thị'),$product->status,['class' => 'form-control'])}}
                <span class="text-danger">{{ $errors->first('status')}}</span>
              </div>
                <div class="col-md-6 mb-1">
                    {{ Form::label('Giá','',['class' => 'font-weight-bold']) }}
                    {{ Form::text('price', $product->price, ['class' => 'form-control','placeholder'=> 'Xin nhập giá...'  ]) }}
                    <span class="text-danger">{{ $errors->first('price')}}</span>
                </div>
                <div class="col-md-6 mb-1">
                    {{ Form::label('Giá nhà sản xuất','',['class' => 'font-weight-bold']) }}
                    {{ Form::text('manufacturer_price', $product->manufacturer_price, ['class' => 'form-control','placeholder'=> 'Xin nhập giá nhà sản xuất...'  ]) }}
                    <span class="text-danger">{{ $errors->first('manufacturer_price')}}</span>
                </div>
        </div>

        <div class="col-md-5 row ml-1">
          <div class="row form-group">
            <div class="col-12">
                <label for="image" class=" form-control-label font-weight-bold">Ảnh<span class="text text-danger"></span></label><br/>
              <img class="mt-2 mb-2 img-thumbnail" id="preview_avatar" src="{{ asset('administration/imageRooms').'/'.$product->thumbnail }}" alt="Photo avatar" style="height: 250px;" >
              <input type="file" id="image" name="image" class="form-control-file" value="{{old('image')}}">
              <span class="text-danger">{{ $errors->first('image')}} </span>
            </div>
          </div>
        </div>
              <div class="col-md-12 mb-1">
                  {{ Form::label('Mô tả','',['class' => 'font-weight-bold']) }}
                  {{ Form::textarea('description', $product->description, ['class' => 'form-control','rows'=>'4','placeholder'=>'Xin nhập mô tả', 'id'=>'editor1' ]) }}
                  <span class="text-danger">{{ $errors->first('description')}} </span>
              </div>

      </div>
    </div>
<div class="card-footer">
  {{ Form::submit('Lưu',['class' => 'btn btn-primary']) }}
  <a class="btn btn-outline-secondary" href="{{route('product.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
</div>
{{ Form::close() }}
</div>
</div>
</div>
@endsection
@section('script')
@include('admin.shared.scrip')
@include('admin.shared.scriptLoadimage')
@include('admin.shared.notification')
        <script>
            function readURL(file){
                if(file.files && file.files[0]){
                    var reader = new FileReader();

                    reader.onload = function(e){
                        $('#preview_avatar').attr('src',e.target.result);
                    }
                    reader.readAsDataURL(file.files[0]);
                }
            };
            $("#image").change(function(){
                readURL(this)
            })
        </script>
        <script src="{{ asset('ckeditor/ckeditor/ckeditor.js') }}"></script>
        <script> CKEDITOR.replace('editor1'); </script>
@endsection
