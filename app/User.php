<?php
namespace App;
use App\Notifications\VerifyEmail;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

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
        'role', 'payment_type', 'paypal_email', 'stripe_email', 'payment_status', 'email_verified_at', 'profile_image', 'status'
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


    public function services()
    {
       return $this->hasMany('App\VendorCategory')->where('parent',0);
    }
    public function faqs()
    {
       return $this->hasMany('App\Models\Vendors\FAQ');
    }


     public function chats()
    {
       return $this->hasMany('App\Models\Vendors\Chat');
    }
}
