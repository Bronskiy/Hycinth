<?php
namespace App;
use App\Notifications\VerifyEmail;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Models\Shop\ShopCartItems;
class User extends Authenticatable implements MustVerifyEmail
{
    use Notifiable;
    public $table ='users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'first_name', 'last_name', 'name', 'phone_number', 'email', 'user_location', 'latitude', 'longitude', 'password', 
        'role', 'payment_type', 'paypal_account', 'stripe_account', 'payment_status', 'email_verified_at', 'profile_image', 'status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function __construct()
    {
        $this->getShopCartTotal();
    }


    public function services()
    {
       return $this->hasMany('App\VendorCategory')->where('parent',0);
    }


    public function orders()
    {
       return $this->hasMany('App\Models\Order');
    }


    public function faqs()
    {
       return $this->hasMany('App\Models\Vendors\FAQ');
    }

 
    public function chats()
    {
       return $this->hasMany('App\Models\Vendors\Chat')
                   ->orderBy('updated_at','DESC');
                   
    }


    public function UpcomingEvents()
    {
       return $this->hasMany('App\UserEvent')
                   ->orderBy('updated_at','DESC');
                   
    }
    
    public function UpcomingUserEvents()
    {
       return $this->hasMany('App\UserEvent')
                   ->whereDate('start_date','>',date('Y-m-d'))->OrderBy('start_date','ASC');
                   
    }


    public function newMessages()
    {
       return $this->hasMany('App\Models\Vendors\Chat')
                   ->join('chat_messages','chat_messages.chat_id','=','chats.id')
                   ->where('chat_messages.receiver_id',\Auth::user()->id) 
                   ->where('chat_messages.receiver_status',0);
                   
    }


    public function newVendorsMessages()
    {
       return $this->hasMany('App\Models\Vendors\Chat','vendor_id') 
                    ->join('chat_messages','chat_messages.chat_id','=','chats.id')
                    ->where('chat_messages.receiver_id',\Auth::user()->id)
                    ->where('chat_messages.receiver_status',0);
    }



    public function newVendorsBusinessMessages()
    {
       return $this->hasMany('App\Models\Vendors\Chat','vendor_id') 
                       
                       ->where(function($t){
                            $msg = $t->first();
                            $unReadMessages = \DB::table('chat_messages')->where('chat_id',$msg->id)
                                                              ->where('receiver_id',\Auth::user()->id)
                                                              ->where('receiver_status',0)
                                                              ->count();
                            if($unReadMessages == 0){
                                $t->where('vendor_id',0);
                            }
                       });
    }

    public function favouriteVendors() {
      return $this->hasMany('App\FavouriteVendor');
    }




    public function CartItems()
    {
        return $this->hasMany('App\Models\EventOrder')->where('type','cart');
    }



     public function MyWishlist()
    {
        return $this->hasMany('App\Models\EventOrder')->where('type','wishlist');
    }

    

    public function shop()
    {
       return $this->hasOne('App\Models\Vendors\Eshop','vendor_id','id');
    }


    public function ShopProductCount()
    {
        return $ShopCartItems = ShopCartItems::where('user_id',$this->id)->sum('quantity');
                                       
    }



    public function ShopProductCartItems()
    {
        return $this->hasMany('App\Models\Shop\ShopCartItems');
                                       
    }



    public function getShopCartTotal()
    {
          $items = ShopCartItems::where('user_id',$this->id)->get();

          foreach ($items as $key => $im) {
                    $Product_id = $item->attributes->product_id;
                    $product = $im->product;
                    $variation = \App\Models\Products\ProductAssignedVariation::find($item->attributes->variant_id);
                    $price = $product->final_price;
                    if($product->product_type == 1){
                      $price = $variation->final_price;
                    }
                    
                    $im->price = $price;
                    $im->total = ($price * $im->quantity);
                    $im->save();
            
          }
    }
}
