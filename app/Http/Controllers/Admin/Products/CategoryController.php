<?php

namespace App\Http\Controllers\Admin\Products;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Products\ProductCategory;
class CategoryController extends Controller
{
   
public $path = 'admin.products.category.';
public $folder = 'images/products/categories/';
   

public function getCategory($parent=0,$subparent=0)
{
	return $category = ProductCategory::with('subCategory')
	                                  ->where('parent',$parent)
	                                  ->where('subparent',$subparent)
	                                  ->OrderBy('sorting','ASC')->get();
}
#--------------------------------------------------------------------------------------------
# Product category listing
#--------------------------------------------------------------------------------------------

	public function index()
	{
		    
		return view($this->path.'index')->with('title','Product Category')->with('category',$this->getCategory())->with('addLink',route('admin.products.category.create'));
	}
   

#--------------------------------------------------------------------------------------------
# Product category listing
#--------------------------------------------------------------------------------------------

    public function create()
    {
    	return view($this->path.'add')
    	->with('category',$this->getCategory())
    	->with('title','Product Category')
    	->with('addLink',route('admin.products.category.create'));
    }




#--------------------------------------------------------------------------------------------
# Product category listing
#--------------------------------------------------------------------------------------------

public function store(Request $request)
{
	 $this->validate($request,[
              'parent' => 'required',
              'subparent' => 'required',
              'meta_title' => 'required',
              'meta_tag' => 'required',
              'meta_description' => 'required',
              'label' => 'required|unique:product_categories',
              'image' => 'image',
       ]);

       $c=new ProductCategory;
       $c->label = trim($request->label);
       $c->parent = trim($request->parent);
       $c->subparent = trim($request->subparent);
       $c->image = $request->hasFile('image') ? uploadFileWithAjax($this->folder,$request->file('image')) : '';
       $c->thumbnail_image = $request->hasFile('thumbnail_image') ? uploadFileWithAjax($this->folder,$request->file('thumbnail_image')) : '';
       $c->meta_title = trim($request->meta_title);
       $c->meta_tag = trim($request->meta_tag);
       $c->meta_description = trim($request->meta_description);
       $c->status = 1;
       $c->featured = $request->featured;
       
       $c->save();

      return redirect(route('admin.products.category'))->with('flash_message','Category saved!');

}


#--------------------------------------------------------------------------------------------
# Product category listing
#--------------------------------------------------------------------------------------------


    # fun
    public function sorting(Request $request)
    {
      

         foreach ($request->list as $key => $category) {
           
             $parent = $this->updatesorting($category['id'],0,0,$key);
               

               if(!empty($category['children'])){

                       foreach ($category['children'] as $k => $sub) {
                         $subparent = $this->updatesorting($sub['id'],$parent,0,$k);

                          if(!empty($sub['children'])){
                               foreach ($sub['children'] as $k1 => $ch) {

                                      $this->updatesorting($ch['id'],$parent,$subparent,$k1);

                               }
                          }
                       }

               }


         }

    }


    public function updatesorting($id,$parent,$subparent,$sort)
    {
       $cate = ProductCategory::find($id);
       if(!empty($cate)){
              
               $cate->parent = $parent;
               $cate->subparent = $subparent;
               $cate->sorting =($sort + 1);
               $cate->save();
               return $cate->id;
       }
    }



#--------------------------------------------------------------------------------------------
# Product category listing
#--------------------------------------------------------------------------------------------

    public function category(Request $request)
    {
    	 $data = ProductCategory::where('parent',$request->parent)->where('subparent',$request->subparent)->OrderBy('sorting','ASC')->get();

    	 return response()->json($data);
    }







#--------------------------------------------------------------------------------------------
# Product category listing
#--------------------------------------------------------------------------------------------

    public function edit(Request $request,$id)
    {

    	 $data = ProductCategory::find($id);
         return view($this->path.'edit')
    	 ->with('category',$this->getCategory())
    	 ->with('subcategory',$this->getCategory($data->parent))
    	 ->with('cate',$data)

    	->with('title','Product Category')
    	->with('addLink',route('admin.products.category.create'));
    }





public function update(Request $request,$id)
{
	 $this->validate($request,[
              'parent' => 'required',
              'subparent' => 'required',
              'meta_title' => 'required',
              'meta_tag' => 'required',
              'meta_description' => 'required',
              'label' => 'required',
              'category_image' => 'image',
       ]);

       $c=ProductCategory::find($id);
       $c->label = trim($request->label);
       $c->parent = trim($request->parent);
       $c->subparent = trim($request->subparent);
       $c->image = $request->hasFile('category_image') ? uploadFileWithAjax($this->folder,$request->file('category_image')) : $c->image;
       $c->thumbnail_image = $request->hasFile('thumbnail_image') ? uploadFileWithAjax($this->folder,$request->file('thumbnail_image')) : $c->thumbnail_image;
       $c->meta_title = trim($request->meta_title);
       $c->meta_tag = trim($request->meta_tag);
       $c->meta_description = trim($request->meta_description);
       $c->status = 1;
       $c->featured = $request->featured;
       
       $c->save();

      return redirect(route('admin.products.category'))->with('flash_message','Category saved!');

}






}
