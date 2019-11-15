<?php

namespace App\Http\Controllers\Vendor;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\VendorPackage;
use App\Category;
use Auth;

class VendorPackageController extends Controller
{
    public function packages($slug) {
       $category = $this->getData($slug);


       $packages = VendorPackage::where(['category_id' => $category->id, 'user_id'=> Auth::User()->id])->paginate(10);
      return view('vendors.management.packages.index')
      ->with('slug', $slug)
      ->with('packages', $packages)
      ->with('category', $category)
       ->with('title', $category->label.' Management :: Packages');
    }

    public function packagesAdd(Request $request, $slug) {  
       $category = $this->getData($slug);      
      return view('vendors.management.packages.add')
      ->with('slug', $slug)
      ->with('category', $category)
      ->with('title', $category->label.' Management :: Package');
	}

	public function packagesStore(Request $request,$slug) {
	  $this->validate($request,[
           'title' => 'required',
           'description' => 'required',
           'amount' => 'required|regex:/^\d+(\.\d{1,2})?$/'
      ]);

      $category = $this->getData($slug);


       
       $request['category_id'] = $category->id;
       $request['user_id'] = Auth::User()->id;
       $request['status'] = 1;

       VendorPackage::create($request->all());

	   return redirect()->route('vendor_packages_management', $slug)->with('messages','Package is saved.');
	}

	public function packagesEdit(Request $request, $slug, $id) {
  
       $category = $this->getData($slug);

       $package = VendorPackage::find($id);

        if(!$package) {
          return redirect()->route('vendor_packages_management', $slug)->with('messages', 'Something Wrong.');
        }
      
      return view('vendors.management.packages.edit')
            ->with('slug', $slug)
            ->with('package', $package)
            ->with('category', $category)
            ->with('title',$category->label.' Management :: Edit Package');
}

public function packagesUpdate(Request $request, $slug, $id) {
  
      $this->validate($request,[
           'title' => 'required',
           'description' => 'required',
           'amount' => 'required|regex:/^\d+(\.\d{1,2})?$/'
      ]);

        $category = $this->getData($slug);
    
	      $package = VendorPackage::find($id);

        if(!$package) {
          return redirect()->route('vendor_packages_management', $slug)->with('messages','Something Wrong.');
        }
                           
       $package->update($request->all());

   return redirect()->route('vendor_packages_management', $slug)->with('messages','Package is updated.');
}

public function packagesDelete(Request $request, $slug, $id) {

        $package = VendorPackage::find($id);
        $package->delete();
   return redirect()->route('vendor_packages_management',$slug)->with('messages','Package is deleted.');
}


public function getData($slug) {
      $category = Category::FindBySlugOrFail($slug);
      return $category ? $category : redirect()->route('vendor_dashboard')->with('messages','Please check your url, Its wrong!');   	   
   }

}
