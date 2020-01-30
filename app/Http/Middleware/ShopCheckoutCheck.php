<?php

namespace App\Http\Middleware;

use Closure;

class ShopCheckoutCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        
        if(\Auth::check() && \Auth::user()->role =="user"){


            if( \Auth::check() && \Auth::User()->role =="user" && \Auth::user()->status == 1 && \Auth::user()->ShopProductCartItems->count() > 0){                       
                    return $next($request);
            }else{
                return redirect()->route('shop.cart')->with('errors','you have not any item in your cart.');
            }
       }elseif(\Auth::check() && \Auth::user()->role !="user"){
           return redirect()->route('request.messages',['type' => 'UnAutherized']);
       }else{
            
          return redirect('/login?redirectLink='.$request->redirectLink);
       }
    }
}
