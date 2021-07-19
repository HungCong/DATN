<?php

namespace App\Http\Controllers\Client;

use App\Models\Orders;
use App\Models\Product;
use App\Models\ProductType;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Room;
use App\Models\News;
use App\Models\Cost;
use App\Models\Admin;
use App\Models\RoomType;
use App\Models\RoomImages;
use App\Models\Tag;
use App\Models\Member;
use Illuminate\Support\Facades\Auth;
use Spatie\Searchable\Search;
use App\Http\Requests\EmailRequest;
use App\Http\Requests\SearchRoomRequest;
use Cookie;
use App\Models\BookingDetail;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;
use Illuminate\Pagination\LengthAwarePaginator;

class HomeController extends Controller
{

    private $langActive = [
       'vi',
       'en',
     ];
    public function __construct()
    {
        $product_type = ProductType::where('isdeleted',0)->get();
        view()->share(compact('product_type'));
    }

    //Search
    public function searchProduct(Request $request)
    {
        $data = Product::where('name','like', '%' . $request->keyword . '%')->where('status',false)->where('isdeleted',false)->get();
        return view('client.home.resultSearch',compact('data'));
    }
    //Home
    public function home()
    {
        $data = ProductType::where('isdeleted',0)->get();
        /*dd($data);*/
        return view('client.home.index',compact('data'));
    }
    //Detail Product
    public function detailProduct($id)
    {
        $data = Product::findOrFail($id);
        return view('client.home.detail_product',compact('data'));
    }

    //ORDER Product
    public function orderProduct($id)
    {
        $data = Product::findOrFail($id);
        return view('client.home.order_product',compact('data'));
    }
    // Post Order Product
    public function postOrderProduct(Request $request)
    {
        $dataProduct = Product::findOrFail($request->id);
        $data = new Orders();
        $data->order_code = rand(100000,999999).Carbon::now('Asia/Ho_Chi_Minh')->year.Carbon::now('Asia/Ho_Chi_Minh')->month.Carbon::now('Asia/Ho_Chi_Minh')->day;;
        $data->transaction_date = Carbon::now('Asia/Ho_Chi_Minh');
        $data->full_name = $request->full_name;
        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->total_amount = $dataProduct->price;
        $data->message = $request->message;
        $data->product_id = $dataProduct->id;
        $data->status = false;
        $data->created_by = Auth::id();
        $data->save();
        return redirect()->route('home.client')->with('message','The application is in the process of processing');
        /*return view('client.home.order_product',compact('data'));*/
    }

    //History order
    public  function history()
    {
        $data = Orders::where('created_by',Auth::user()->id)->get();
        return view('client.home.history_order',compact('data'));
    }
    //Detail Order Product
    public  function  detailOrderProduct($id)
    {
        $data = Orders::findOrFail($id);
        return view('client.home.detail-order-product',compact('data'));
    }
    //Detail Product for Product Types
    public function detailProductForProductType($id)
    {
        $nameProductType = ProductType::findOrFail($id);
        $data = Product::where('product_type_id',$id)->where('status',false)->where('isdeleted',false)->get();

        return view('client.home.detailProductForProductType',compact('data','nameProductType'));
    }

    public function search(Request $req)
    {
        $product = Product::where('name','like','%'.$req->key.'%')->get();
        return view('client.home.search', compact('product'));
    }

    //Kind of room
    public function roomType()
    {
        $first = Room::where('location','1st floor')->whereisdeleted(0)->wherestatus(0)->get();
        $second = Room::where('location','2st floor')->whereisdeleted(0)->wherestatus(0)->get();
        $thirst = Room::where('location','3st floor')->whereisdeleted(0)->wherestatus(0)->get();
        $data = RoomType::whereisdeleted('isdeleted',0)->get();
        return view('client.roomtype.index',compact('data','first', 'second', 'thirst'));
    }

    public function roomInRoomType($id)
    {
        $data = Room::where('room_type_id',$id)->whereisdeleted(0)->wherestatus(0)->paginate(9);
        return view('client.room.index',compact('data'));
    }

    public function roomDetail($id)
    {
        $data = Room::find($id);
        $services = Cost::all();
        $images = RoomImages::where('room_id',$id)->get();

        $data_similar = Room::where('room_type_id',$data->room_type_id)->whereisdeleted(0)->wherestatus(0)->orderBy('views', 'desc')->limit(3)->get();

        // Dem luot view
        if (!Cookie::has('roomKey'.$id)) {
            $data->increment('views');
            // Ton tai sau 60p
            Cookie::queue(Cookie::make('roomKey'.$id, $id, 60));
        }

        return view('client.room.detail',compact('data','data_similar','images', 'services'));
    }

    public function roomInTag($id)
    {
        $room = Tag::findOrFail($id)->room()->whereisdeleted(0)->get();
        return view('client.room.roomintag', compact('room'));
    }

    //Search
    public function room(Request $request)
    {

        //Ham dung de search room and show all room
        // Lay tat ca room sap xep theo view cao -> thap
        $data = Room::orderBy('views','desc')->whereisdeleted(0)->wherestatus(0)->get();
        //Kiem tra yeu cau truy van v� loc du lieu
        // Neu co room type

        if($request->room_type){
            $data = $data->where('room_type_id',$request->room_type);
        }
        // Neu co adult
        if($request->adult){
            $data = $data->where('adult',$request->adult);
        }
        // Neu c� kid
        if(empty($request->kid)){
            $data = $data->where('kid',$request->kid);
        }

        // Neu co check in date & check out date
        if($request->checkin!=null && $request->checkout!=null){
            // Tao cookie de su lai o invoice
            Cookie::queue(Cookie::make('checkin', $request->checkin, 60));
            Cookie::queue(Cookie::make('checkout', $request->checkout, 60));
            $checkin = strtotime(str_replace('/', '-', $request->checkin));
            $checkout = strtotime(str_replace('/', '-', $request->checkout));
            // check in date & check out date
            // Lay room kha dung

            foreach ($data as $key => $value) {
                $check = BookingDetail::whereroom_id($value->id)->get();
                    foreach ($check as $value2) {
                    if( (date('Y-m-d', $checkin) < $value2->booking->check_in_date && date('Y-m-d', $checkout) < $value2->booking->check_in_date) || (date('Y-m-d', $checkin) > $value2->booking->check_out_date && date('Y-m-d', $checkout) > $value2->booking->check_out_date)  ){

                    }else{
                        // Xoa phan tu kh�ng thoa man dieu kien
                        unset($data[$key]);
                    }
                }
            }
        }
        // Xu ly phan trang cho collection
        Collection::macro('paginate', function($perPage, $total = null, $page = null, $pageName = 'page') {
            $page = $page ?: LengthAwarePaginator::resolveCurrentPage($pageName);

            return new LengthAwarePaginator(
                $this->forPage($page, $perPage),
                $total ?: $this->count(),
                $perPage,
                $page,
                [
                    'path' => LengthAwarePaginator::resolveCurrentPath(),
                    'pageName' => $pageName,
                ]
            );
        });
        if($data->isEmpty()){
            $data = Room::orderBy('views','desc')->whereisdeleted(0)->wherestatus(0)->get();
        }
        $data = (new Collection($data))->paginate(9);

        return view('client.room.index', compact('data'));
    }


    public function searchall(Request $request)
    {
        $searchResults = (new Search())
            ->registerModel(News::class, 'title')
            ->registerModel(RoomType::class, 'name')
            ->perform($request->input('query'));
        if ($searchResults->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }

        return view('client.home.search_result', compact('searchResults'));
    }

    //News
    public function news()
    {
        $data = News::whereisdeleted(0)->wherestatus(0)->orderBy('created_at', 'DESC')->paginate(9);
        foreach ($data as $key=> $news) {
            $data[$key]->created_by = Admin::where('id','like',$news->created_by)->value('name');
        }
        return view('client.news.index',compact('data'));
    }

    public function newsDetail($slug)
    {
        $data = News::whereslug($slug)->firstOrFail();
        $data->created_by = Admin::whereid($data->created_by)->value('name');
        return view('client.news.detail',compact('data'));
    }

    //Da Ngon Ngu
    public function changeLang(Request $request, $lang)
    {
       if (in_array($lang, $this->langActive)) {
         $request->session()->put(['lang' => $lang]);
         return redirect()->back();
        }
    }


    //Filter
    public function filter(Request $request)
    {
        $first = Room::where('location','1st floor')->whereisdeleted(0)->wherestatus(0)->get();
        $second = Room::where('location','2st floor')->whereisdeleted(0)->wherestatus(0)->get();
        $thirst = Room::where('location','3st floor')->whereisdeleted(0)->wherestatus(0)->get();
        if($request->checkbox == null){
            $data = RoomType::whereisdeleted(0)->get();
            return view('client.roomtype.index',compact('data','first','second','thirst'));
        }
        $data = RoomType::where('isdeleted',0)->get();
        $roomtype_name = RoomType::query();
        if($request->checkbox){
            foreach($request->checkbox as $checkbox) {
                $roomtype_name->orWhere('id',$checkbox);
            }
            $roomtype_name = $roomtype_name->distinct()->get();
        }
        return view('client.roomtype.search_roomtype', compact('roomtype_name','data','first','second','thirst'));
    }

    //FilterRoom
    public function filterRoom(Request $request)
    {
        $data = null;
        if ($request->radio_price == 500000 && $request->radio_adult == null && $request->radio_kid == null) {
            $data = Room::where('price','<=',$request->radio_price)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 500000 && $request->radio_adult == null && $request->radio_kid != null) {
            $data = Room::where('price','<=',$request->radio_price)
                        ->where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 500000 && $request->radio_kid == null && $request->radio_adult != null) {
            $data = Room::where('price','<=',$request->radio_price)
                        ->where('adult',$request->radio_adult)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 500000 && $request->radio_adult != null && $request->radio_kid != null) {
            $data = Room::where('price','<=',$request->radio_price)
                        ->where('adult',$request->radio_adult)
                        ->where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }
        elseif ($request->radio_price == 1000000 && $request->radio_adult == null && $request->radio_kid == null) {
            $data = Room::where('price','<=',$request->radio_price)->whereisdeleted(0)->wherestatus(0)
                        ->get();
            if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }

        }elseif ($request->radio_price == 1000000 && $request->radio_adult == null && $request->radio_kid != null) {
             $data = Room::where('price','<=',$request->radio_price)
                        ->where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 1000000 && $request->radio_kid == null && $request->radio_adult != null) {
            $data = Room::where('price','<=',$request->radio_price)
                        ->where('adult',$request->radio_adult)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 1000000 && $request->radio_adult != null && $request->radio_kid != null) {
            $data = Room::where('price','<=',$request->radio_price)
                        ->where('adult',$request->radio_adult)
                        ->where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 2000000 && $request->radio_adult == null && $request->radio_kid == null) {
            $data = Room::where('price','>=',$request->radio_price)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 2000000 && $request->radio_adult == null && $request->radio_kid != null) {
            $data = Room::where('price','>=',$request->radio_price)
                        ->where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 2000000 && $request->radio_kid == null && $request->radio_adult != null) {
            $data = Room::where('price','>=',$request->radio_price)
                        ->where('adult',$request->radio_adult)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == 2000000 && $request->radio_adult != null && $request->radio_kid != null) {
           $data = Room::where('price','>=',$request->radio_price)
                        ->where('adult',$request->radio_adult)
                        ->where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == null && $request->radio_adult == null && $request->radio_kid == null) {
                $notification = array(
                'message' => trans('allclient.please_choice'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
        }elseif ($request->radio_price == null && $request->radio_adult != null && $request->radio_kid != null) {
             $data = Room::where('adult',$request->radio_adult)
                        ->where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == null && $request->radio_adult == null && $request->radio_kid != null) {
             $data = Room::where('kid',$request->radio_kid)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }elseif ($request->radio_price == null && $request->radio_adult != null && $request->radio_kid == null) {
            $data = Room::where('adult',$request->radio_adult)->whereisdeleted(0)->wherestatus(0)
                        ->get();
             if ($data->isEmpty()) {
                $notification = array(
                'message' => trans('allclient.cant_find_room'),
                'alert-type' => 'info'
                );
                return redirect()->back()->with($notification);
            }
        }
        return view('client.room.search_room', compact('data'));
    }

    //Introduce
    public function introduce(){
        return view('client.introduce.index');
    }

    public function term(){
        return view('client.home.term');
    }

    public function member(EmailRequest $request){
        $member = new Member([
            'email' => $request->email,
        ]);
        $member->save();
        $notification = array(
            'message' => trans('allclient.email_success'),
            'alert-type' => 'success'
            );
        return back()->with($notification);
    }
}
