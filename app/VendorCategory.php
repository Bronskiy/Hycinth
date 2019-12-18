<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
use App\Traits\NotificationFlash;
use Auth;
class VendorCategory extends Model
{

     use Sluggable;
     use SluggableScopeHelpers;
     use NotificationFlash;

     protected $fillable = [
        'parent', 'title', 'user_id', 'category_id', 'status', 'business_url', 'publish',
        'payment_status', 'paypal_account', 'stripe_account',
    ];
    
    public function sluggable()
    {
        return [

            'business_url' => [
                'source' => 'title'
            ]
        ];
    }






       // public static function getNearBy($lat, $lng)
       //  {
       //      $results =self::select(['*',\DB::raw('( 0.621371 * 3959 * acos( cos( radians('.$lat.') ) * cos( radians( latitude ) ) * cos( radians( longitude ) - radians('.$lng.') ) + sin( radians('.$lat.') ) * sin( radians(latitude) ) ) ) AS distance')]);
       //      return $results;
       //  }

    public function getChatOfLoggedUser()
    { 
       return $this->hasOne('App\Models\Vendors\Chat','business_id','id')->where(function($t){
        
              if(Auth::check() && Auth::user()->role == "user"){

                  $t->where('chats.user_id',Auth::user()->id);

              }else{

                  $t->where('chats.user_id',0);

              }
       });
    }



    public function chats()
    {
       return $this->hasMany('App\Models\Vendors\Chat','business_id')
                    ->orderBy('updated_at','DESC');
    }
 

    public function category()
    {
       return $this->belongsTo('App\Category','category_id','id');
    }
 
    public function subcategory()
    {
       return $this->hasMany('App\VendorCategory','parent');
    }


 
    public function faqs()
    {
       return $this->hasMany('App\FAQs','vendor_category_id','id');
    }
 
    public function VendorPackage()
    {
       return $this->hasMany('App\VendorPackage','vendor_category_id');
    }
 
    public function vendors()
    {
       return $this->belongsTo('App\User','user_id')->where('role','vendor');
    }
 
    public function basicInfo()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','basic_information');
    }

 
    public function profileImage()
    {
       return $this->hasOne('App\VendorCategoryMetaData','vendor_category_id','id')
                    
                   ->where('type','basic_information')
                   ->where(function($t){
                       $category = $t->first();
                       if($category->category->cover_type == 1){
                          $t->where('key','cover_photo');
                       }else{
                          $t->where('key','cover_video_image');
                       }
                   });
                   
    }




    public function ImageGallery()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','imageGallery');
    }



    public function VideoGallery()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','videoGallery');
    }


    public function styles()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('vendor_category_meta_datas.type','styles');
                    
    }




     public function seasons()
    {
       return $this->hasMany('App\VendorCategoryMetaData','vendor_category_id','id')
                    ->where('vendor_category_meta_datas.type','seasons');
                                                                                                                    
    }
    


    public function description()
    {
       return $this->hasOne('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','description');
    }


     public function prohibtion()
    {
       return $this->hasOne('App\VendorCategoryMetaData','vendor_category_id','id')
                   ->where('type','prohibtion');
    }



    public function DealsDiscount()
    {
       return $this->hasMany('App\Models\Vendors\DiscountDeal','vendor_category_id','id');
    }



    public function VendorEvents() {
       return $this->hasMany('App\VendorEventGame', 'vendor_category_id', 'id');
    }



    public function VendorGames() {
       return $this->hasMany('App\VendorAmenity', 'vendor_category_id', 'id')->where('type','game');
    }

     public function VendorAmenity() {
       return $this->hasMany('App\VendorAmenity', 'vendor_category_id', 'id')->where('type','amenity');
    }



     public function UnreadBusinessMessages()
    {
       return $this->hasMany('App\Models\Vendors\Chat','business_id') 
                    ->join('chat_messages','chat_messages.chat_id','=','chats.id')
                    ->where('chat_messages.receiver_id',\Auth::user()->id)
                    ->where('chat_messages.receiver_status',0);
    }




}
