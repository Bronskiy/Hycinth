<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Commission;
class CommissionController extends Controller
{
 

#--------------------------------------------------------------------------------------------
# index page
#--------------------------------------------------------------------------------------------

public function index()
{
	$slab = Commission::where('parent',0)->where('type','slab')->orderBy('slab_from','ASC')->get();
	return view('admin.commission.index')
	->with('slab',$slab)
	->with('title','Admin Commission Fee Settings');
}

public function fee(Request $request)
{   $slab = Commission::where('parent',0)->where('type','slab')->orderBy('slab_from','ASC')->get();
	return view('admin.commission.fee')
	->with('slab',$slab)
	->with('title','Admin Commission Fee Settings');
}


#--------------------------------------------------------------------------------------------
# index page
#--------------------------------------------------------------------------------------------

public function store(Request $request)
{
   $this->validate($request,[
     'commission_fee' => 'required',
     'slab_from' => 'required',
     'slab_to' => 'required',

   ]);

 

         return $this->saveSlabs($request);
         return redirect()->back()->with('messages','Slab is saved!');
   // }else{
   //       $c = new Commission;
   //       $c->parent = $request->slab;
   //       $c->commission_fee = $request->commission_fee;
   //       $c->type = 'fee';
   //       $c->save();
   //       return redirect()->back()->with('messages','Commission Fee is saved!');
   // }

}


public function valdateRules($type)
{
	$rules =[];
   if($type == "slab"){
   	 $rules = [
      'slab_from' => 'required'
   	 ];
   }else{
   	 $rules = [
       'slab' => 'required|unique:commissions'
   	 ];
   }

   return $rules;
}


public function saveSlabs($request)
{

        
        $slab = Commission::where(function($t) use($request){
                    	 //$t->whereBetween('slab_from',[$request->slab_from,$request->slab_to]);
                    	 $t->where('slab_to','>=',$request->slab_from);
                    	 $t->orWhere('slab_to','>=',$request->slab_to);
         });
        if($slab->count() > 0){
        	$msg = 'This slab range already used in another slab';
        	return redirect()->back()->with('messages',$msg);
        }else{


	     $c = new Commission;
         $c->slab_from = $request->slab_from;
         $c->slab_to = $request->slab_to;
         $c->commission_fee = $request->commission_fee;
         $c->parent = 0;
         $c->type = 'slab';
         $c->save();

         return redirect()->back()->with('messages','Slab is saved Successfully');
       }
}


public function delete($id)
{
	$c = Commission::find($id);
	$c->delete();
   return redirect()->back()->with('messages','Slab is deleted Successfully');
}





}
