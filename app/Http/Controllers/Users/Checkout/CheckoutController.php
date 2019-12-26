<?php

namespace App\Http\Controllers\Users\Checkout;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Vendors\DiscountDeal;
use App\VendorPackage;
use Auth;
use App\Models\Order;
use Session;
use App\UserEvent;
use Carbon\Carbon;
use App\Traits\Checkoutproccess\Billing;

class CheckoutController extends Controller
{
    
	 
use Billing;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

    public function __construct(Request $request)
	{   $stripe = SripeAccount();
        \Stripe\Stripe::setApiKey($stripe['sk']);

        // print_r($stripe);
        // die;
// pk_test_7s4zephLlSBQHOqovi6w0XCK00U4UJ6WlO
// sk_test_p8VlaYX68wQNoikV5b3eXawB00tVn2yhs2
//         Array ( [pk] => pk_test_7s4zephLlSBQHOqovi6w0XCK00U4UJ6WlO [sk] => sk_test_p8VlaYX68wQNoikV5b3eXawB00tVn2yhs2 [client_id] => ca_GLAxBauXm8E4habSHJXBNiOWAixurQ2U )
	}





}
