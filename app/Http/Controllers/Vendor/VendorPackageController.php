<?php

namespace App\Http\Controllers\Vendor;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorPackage;
use App\Category;
use App\PackageMetaData;
use Auth;

class VendorPackageController extends Controller
{

#------------------------------------------------------------------------
#   Vendor Package 
#------------------------------------------------------------------------


    public function packages($slug) {
         $category = $this->getData($slug);
         $packages = VendorPackage::where([
                      'category_id' => $category->id,
                      'user_id'=> Auth::User()->id
                    ])->paginate(10);

 
      return view('vendors.management.packages.index')
            ->with('slug', $slug)
            ->with('packages', $packages)
            ->with('category', $category)
            ->with('title', $category->label.' Management :: Packages')
            ->with('addLink', 'vendor_packagesadd_management');
    }


#------------------------------------------------------------------------
#   Vendor Package add
#------------------------------------------------------------------------



    public function packagesAdd(Request $request, $slug) {
       $category = $this->getData($slug);      
         return view('vendors.management.packages.add')
              ->with('slug', $slug)
              ->with('category', $category)
              ->with('title', $category->label.' Management :: Package')
              ->with('addLink', 'vendor_packages_management');
	}


#------------------------------------------------------------------------
#   Vendor Package store
#------------------------------------------------------------------------


	public function packagesStore(Request $request, $slug) {
    	  $this->validate($request,[
               'title' => 'required',
               'description' => 'required',
               'price' => 'required|regex:/^\d+(\.\d{1,2})?$/',

               'no_of_hours' => 'required',
               'no_of_days' => 'required',
               'price_type' => 'required',
               'min_person' => 'required',
               'max_person' => 'required'
          ]);

        $category = $this->getData($slug);
        $vendor_category_id = $this->getVendorCategoryID($category->id);
        $user = Auth::User();

        $request['category_id'] = $category->id;
        $request['user_id'] = $user->id;
        $request['status'] = 1;
        $request['vendor_category_id'] = $vendor_category_id;

       $vendorPack = VendorPackage::create($request->all());

       if(!empty($request->amenity) && count($request->amenity)) {
        foreach ($request->amenity as $key => $value) {
         PackageMetaData::create([
          'parent' => 0,
          'package_id' => $vendorPack->id,
          'category_id' => $category->id,
          'user_id' => $user->id,
          'type' => 'amenities',
          'key' => 'amenity',
          'vendor_category_id' => $vendor_category_id,
          'key_value' => $value 
         ]); 
        }
       }


        if(!empty($request->games) && count($request->games)) {
        foreach ($request->games as $key => $value) {
         PackageMetaData::create([
          'parent' => 0,
          'package_id' => $vendorPack->id,
          'category_id' => $category->id,
          'user_id' => $user->id,
          'type' => 'games',
          'key' => 'game',
          'vendor_category_id' => $vendor_category_id,
          'key_value' => $value 
         ]); 
        }
       }

       if(!empty($request->event_type) && count($request->event_type)) {
          foreach ($request->event_type as $key => $value) {
           PackageMetaData::create([
            'parent' => 0,
            'package_id' => $vendorPack->id,
            'category_id' => $category->id,
            'user_id' => $user->id,
            'type' => 'events',
            'key' => 'event',
            'vendor_category_id' => $vendor_category_id,
            'key_value' => $value 
           ]); 
          }
       }

	   return redirect()->route('vendor_packages_management', $slug)->with('messages','Package has added successfully.');
	}


#------------------------------------------------------------------------
#   Vendor Package edit
#------------------------------------------------------------------------




	public function packagesEdit(Request $request, $slug, $id) {
  
       $category = $this->getData($slug);

       $package = VendorPackage::find($id);

        if(!$package) {
          return redirect()->route('vendor_packages_management', $slug)->with('messages', 'Something Went Wrong.');
        }
      
      return view('vendors.management.packages.edit')
            ->with('slug', $slug)
            ->with('package', $package)
            ->with('category', $category)
            ->with('title',$category->label.' Management :: Edit Package')
            ->with('addLink', 'vendor_packages_management');
}


#------------------------------------------------------------------------
#   Vendor Package update
#------------------------------------------------------------------------


public function packagesUpdate(Request $request, $slug, $id) {
      $this->validate($request,[
           'title' => 'required',
           'description' => 'required',
           'price' => 'required|regex:/^\d+(\.\d{1,2})?$/',

           'no_of_hours' => 'required',
           'no_of_days' => 'required',
           'price_type' => 'required',
           'min_person' => 'required',
           'max_person' => 'required'
      ]);

        $category = $this->getData($slug);
        $user = Auth::User();
    
	      $package = VendorPackage::find($id);

        if(!$package) {
          return redirect()->route('vendor_packages_management', $slug)->with('messages','Something Went Wrong.');
        }

       $package->update($request->all());

       if(!empty($request->amenity) && count($request->amenity)) {
            PackageMetaData::where([
              'user_id' => $user->id,
              'package_id' => $package->id,
              'category_id' => $category->id,
              'type' => 'amenities'
            ])->delete();
              

        foreach ($request->amenity as $key => $value) {
               PackageMetaData::create([
                'parent' => 0,
                'package_id' => $package->id,
                'category_id' => $category->id,
                'user_id' => $user->id,
                'type' => 'amenities',
                'key' => 'amenity',
                'key_value' => $value 
               ]); 
        }
       }

         if(!empty($request->games) && count($request->games)) {

               PackageMetaData::where([
                  'user_id' => $user->id,
                  'package_id' => $package->id,
                  'category_id' => $category->id,
                  'type' => 'games'
                ])->delete();
               
        foreach ($request->games as $key => $value) {
               PackageMetaData::create([
                'parent' => 0,
                'package_id' => $package->id,
                'category_id' => $category->id,
                'user_id' => $user->id,
                'type' => 'games',
                'key' => 'game',
                'key_value' => $value 
               ]); 
        }
       }

       if(!empty($request->event_type) && count($request->event_type)) {
        PackageMetaData::where(['user_id' => $user->id, 'package_id' => $package->id, 'category_id' => $category->id, 'type' => 'events'])->delete();

          foreach ($request->event_type as $key => $value) {
               PackageMetaData::create([
                'parent' => 0,
                'package_id' => $package->id,
                'category_id' => $category->id,
                'user_id' => $user->id,
                'type' => 'events',
                'key' => 'event',
                'key_value' => $value 
               ]); 
          }
       }

   return redirect()->route('vendor_packages_management', $slug)->with('messages','Package has updated successfully.');
}


#------------------------------------------------------------------------
#   Vendor Package Addons
#------------------------------------------------------------------------

public function addOnsCreate(Request $request, $slug, $id) {
  $category = $this->getData($slug);
  $user = Auth::User();

  if(count($request->title) && count($request->price)) {
    foreach ($request->title as $key => $value) {
      if($request->title[$key] && $request->price[$key]) {
        PackageMetaData::create([
        'parent' => 0,
        'package_id' => $id,
        'category_id' => $category->id,
        'user_id' => $user->id,
        'type' => 'addons',
        'key' => $request->title[$key],
        'key_value' => $request->price[$key] 
       ]);
      }        
      }
   }
   return redirect()->route('vendor_packages_management', $slug)->with('messages','Package add ons has created successfully.');;
}


#------------------------------------------------------------------------
#   Vendor Package Addons Delete
#------------------------------------------------------------------------


public function addOnsDelete(Request $request, $slug, $id) {
   PackageMetaData::find($id)->delete();
   return redirect()
              ->route('vendor_packages_management', $slug)
              ->with('messages','Package add ons has deleted successfully.');;
}


#------------------------------------------------------------------------
#   Vendor Package delete
#------------------------------------------------------------------------


public function packagesDelete(Request $request, $slug, $id) {
            VendorPackage::find($id)->delete();
            PackageMetaData::where('package_id', $id)->delete();
        
        return redirect()->route('vendor_packages_management',$slug)->with('messages','Package has deleted successfully.');
}


#------------------------------------------------------------------------
#   Vendor Package getData
#------------------------------------------------------------------------



// public function getData($slug) {
//       $category = Category::FindBySlugOrFail($slug);
//       return $category ? $category : redirect()
//                      ->route('vendor_dashboard')
//                     ->with('messages','Please check your url, Its wrong!');   	   
//    }

public function getData($slug)
   {
      
      $category = Category::where('slug',$slug)
                           ->join('vendor_categories','vendor_categories.category_id','=','categories.id')
                           ->where('vendor_categories.user_id',Auth::user()->id);

      return $category->count() > 0 ? $category->first() : redirect()->route('vendor_dashboard')->with('messages','Please check your url, Its wrong!');

       
   }

public function getVendorCategoryID($category_id)
{
        $VendorCategory = \App\VendorCategory::where('user_id',Auth::user()->id)
       ->where('category_id',$category_id);
       $vendor = $VendorCategory->first();
       return $vendor_category_id = $VendorCategory->count() > 0 ? $vendor->id : 0;

}

// public function getVendorCategoryID($category_id) {
//        $vendor = \App\VendorCategory::where(['user_id'=> Auth::User()->id, 'category_id'=> $category_id])->first();
//        return $vendor_category_id = $vendor->count() > 0 ? $vendor->id : 0;
// }



}
