<?php

namespace App\Http\Controllers\Admin;

use App\Repositories\NewTypes\NewTypeInterface;
use App\Repositories\Products\ProductsInterface;
use App\Repositories\ProductTypes\ProductTypeInterface;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use Carbon\Carbon;
use App\Repositories\News\NewsInterface;
use App\Repositories\User\UserInterface;
use Mail;
use App\Models\orders;
class HomeController extends Controller
{

  private $langActive = [
    'vi',
    'en',
  ];

  protected $userRP;
  protected $productRP;
  protected $productTypeRP;

  public function __construct(UserInterface $userInterface, ProductsInterface $productRepository, ProductTypeInterface $productTypeRepository)
  {
    $this->userRP = $userInterface;
    $this->productRP = $productRepository;
    $this-> productTypeRP = $productTypeRepository;

  }

  public function index()
  { 
    $sum_MM = orders::sum('total_amount');
    $sum_order = orders::count();
    $user_total = $this->userRP->countUserclient();
    $product_total = $this->productRP->countProductClient();
    $productTypes_total = $this->productTypeRP->countProductTypeClient();
    return view('admin.home.index',compact('user_total','product_total','productTypes_total', 'sum_MM', 'sum_order'));
  }

  public function changeLang(Request $request, $lang)
  {
    if (in_array($lang, $this->langActive)) {
      $request->session()->put(['lang' => $lang]);
      return redirect()->back();
    }
  }

  public function error404()
  {
    return view('admin.error.error404');
  }
  public function sendNoti($email){
    $data = array('name'=>"ElaHotel");
    Mail::send('email.sendnoti',$data,function($message) use ($email){
            $message->to($email);
            $message->subject(trans('admin.out'));
    });
    $notification = array(
          'message' => trans('admin.send_noti_success'),
          'alert-type' => 'success'
    );
    return redirect()->back()->with($notification);
  }
}
