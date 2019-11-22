<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorCategory;

class BusinessController extends Controller
{
    public function index(Request $request) {
    	return view('admin.businesses.index')->with('title', 'Businesses');	
    }

   	public function ajax_getBusinesses($status) {
      $vanCat = VendorCategory::where(['status' => $status])->get();
  		return datatables()->of($vanCat)
  		->addColumn('action', function ($t) {
  			return $this->createAction($t, 'vendorBusinessView', 'admin_business_changeBusinessesStatus');
  		})->addColumn('services', function ($t) {
        return $this->createServices($t);
      })->make(true);
    }

  public function changeBusinessesStatus($id, $status) {
    $vendorCategory = VendorCategory::find($id);
      $statusTitle = '';
      $publishSts = 0;

      if($status == 4) {
        $statusTitle = 'Rejected';
        $publishSts = 0;
      }
      elseif($status == 3) {
        $statusTitle = 'Approved';
        $publishSts = 1;
      }
      elseif($status == 2) {
        $statusTitle = 'Pending';
        $publishSts = 0;
      }

     if(!empty($vendorCategory)) {
        $vendorCategory->status = $status;
        $vendorCategory->publish = $publishSts;
        $vendorCategory->save();
        $msg= '<b>'.$vendorCategory->title.'</b> is '.$statusTitle;
       return redirect(route('admin.business.index'))->with('flash_message', $msg);
     }
     return redirect()->back()->with('flash_message', 'Something Went Woring!');
  }

  function createServices($data) {
    $text = $data->title;
    if(count($data->subcategory)) {
      foreach ($data->subcategory as $key => $value) {
        if($value->title) {
          $text .= ', '.$value->title;
        }
      }
    }
      return $text;
  }

   	function createAction($data, $businessUrl, $stsUrl) {

            $text  ='<div class="btn-group">';
            $text .='<button type="button" class="btn btn-primary">Action</button>';
            $text .='<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">';
            $text .='<span class="caret"></span>';
            $text .='<span class="sr-only">Toggle Dropdown</span>';
            $text .='</button>';
            $text .='<div class="dropdown-menu" role="menu" x-placement="top-start" style="position: absolute; transform: translate3d(67px, -165px, 0px); top: 0px; left: 0px; will-change: transform;">';

            if(!empty($data->business_url)) {
              $text .='<a target="_blank" href="'.route($businessUrl, ['slug'=> $data->category->slug, 'url'=> $data->business_url]).'" class="dropdown-item">View</a>';
              $text .='<div class="dropdown-divider"></div>';
            }
            
            if($data->status !== 2) {
              $text .='<a href="'.route($stsUrl, ['id'=> $data->id, 'status'=> 2]).'" class="dropdown-item">Pending</a>';
              $text .='<div class="dropdown-divider"></div>';
            }
            if($data->status !== 3) {
              $text .='<a href="'.route($stsUrl, ['id'=> $data->id, 'status'=> 3]).'" class="dropdown-item">Approved</a>';
              $text .='<div class="dropdown-divider"></div>';
            }
            if($data->status !== 4) {
              $text .='<button type="button" class="dropdown-item" style="cursor: pointer;" data-toggle="modal" data-target="#exampleModal">
                                          Rejected
                                        </button>';
            }
            $text .='</div>';
            $text .='</div>';

            return $text;
}
}
