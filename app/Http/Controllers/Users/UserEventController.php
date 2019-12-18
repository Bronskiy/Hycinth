<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Event;
use App\UserEvent;
use App\CategoryVariation;
use App\Category;
use App\UserEventMetaData;
use App\Models\Order;
use Auth;

class UserEventController extends Controller
{
    public function index() {
    	$events = UserEvent::where(['user_id' => Auth::User()->id])->paginate(10);
    	return view('users.events.index')->with('events', $events);
    }

    public function showCreateEvent() {
    	$events = Event::where('status', 1)->get();
    	return view('users.events.create')->with(['events' => $events]);
    }

	public function create(Request $request) {
          
        $this->validate($request,[
                 'title' => 'required',
                 'description' => 'required',
                 'start_date' => 'required',
                 'start_time' => 'required',
                 'end_time' => 'required',
                 'end_date' => 'required',
                 'location' => 'required',
                 'latitude' => 'required',
                 'longitude' => 'required',
                 'event_type' => 'required',
                 'min_person' => 'required',
                 'max_person' => 'required',
                 'event_picture' => 'required|image',
                 'seasons' => 'required',
                 'colour' => 'required',
                 'notepad' => 'required',
                 'ideas' => 'required',
         ]);

        $path = 'images/events/';
        $e =new  UserEvent;
        $e->user_id = trim(Auth::user()->id);
        $e->title = trim($request->title);
        $e->description = trim($request->description);
        $e->start_date = trim($request->start_date);
        $e->start_time = trim($request->start_time);
        $e->end_time = trim($request->end_time);
        $e->end_date = trim($request->end_date);
        $e->location = trim($request->location);
        $e->latitude = trim($request->latitude);
        $e->longitude = trim($request->longitude);
        $e->event_type = trim($request->event_type);
        $e->event_budget = trim($request->event_budget);
        $e->long_description = trim($request->long_description);
        $e->min_person = trim($request->min_person);
        $e->max_person = trim($request->max_person);
        $e->seasons = trim($request->seasons);
        $e->colour = trim($request->colour);
        $e->ideas = trim($request->ideas);
        $e->notepad = trim($request->notepad);
        $e->event_picture = $request->hasFile('event_picture') ? uploadFileWithAjax($path, $request->event_picture) : $e->event_picture;
        $e->save();
          
        $url = url(route('user_show_detail_event',$e->slug));

        $categories = $request->event_categories;
        $u = Auth::user();
        UserEventMetaData::where('event_id', $e->id)->delete();
        $this->save_event_meta_data($categories,$u,$e);
        $u->login_count = 1;
        $u->save();

 

    	return redirect()->route('user_events')->with('flash_message', 'User Event has been saved successfully');
    }

    public function getEventCategories(Request $request) {
    	$event = Event::with(['categoryVariation' => function($q) {
            $q->groupBy('category_id');
        }, 'categoryVariation.category'])
        ->find($request->id);
    	return response()->json($event);
    }


 public function getEventCategory(Request $request) {
    $event = Event::with(['categoryVariation' => function($q) {
            $q->groupBy('category_id');
        }, 'categoryVariation.category'])
        ->where('id',$request->id);
           $text ="";
         if($event->count() > 0){
                 $categoryVariation = $event->first();
                
               foreach ($categoryVariation->categoryVariation as $value) {
            
                        $text .='<div class="col-lg-6">';
                        $text .='<div class="vendor-category">';
                        $text .='<div class="category-checkboxes category-title">';
                        $text .='<input type="checkbox" class="categoryCheckboxes" name="categories[]" value="'.$value->category->id.'" id="category-'.$value->category->id.'">';
                        $text .='<label for="category-'.$value->category->id.'">'.$value->category->label.'</label>';
                        $text .='</div>';
                        $text .='</div>';
                        $text .='</div>';

 

               }
         }



            return response()->json($text);


    }



    public function showEditEvent($slug) {
    	$events = Event::where('status', 1)->get();
    	$user_event = UserEvent::FindBySlugOrFail($slug);
         
        $user_event['categories'] = !empty($cat_ids) ? json_encode($cat_ids) : [];
        return view('users.events.edit')->with(['events' => $events, 'user_event' => $user_event]);
    }

    public function showDetailEvent($slug) {
        $events = Event::where('status', 1)->get();
        $user_event = UserEvent::FindBySlugOrFail($slug);
        return view('users.events.detail')->with(['events' => $events, 'user_event' => $user_event]);
    }

    public function update(Request $request, $slug) {
  //       $user = Auth::User();
  //       $path = 'images/events/';
		// $user_event = UserEvent::FindBySlugOrFail($slug);

  //       UserEventMetaData::where('event_id', $user_event->id)->delete();

  //       $this->save_event_meta_data($request->event_categories, $user, $user_event);

  //       $request['event_picture'] = $request->has('event_picture') ? uploadFileWithAjax($path, $request->file('event_picture')) : $user_event->event_picture;

  //   	$user_event->update($request->all());



        $this->validate($request,[
                 'title' => 'required',
                 'description' => 'required',
                 'start_date' => 'required',
                 'start_time' => 'required',
                 'end_time' => 'required',
                 'end_date' => 'required',
                 'location' => 'required',
                 'latitude' => 'required',
                 'longitude' => 'required',
                 'event_type' => 'required',
                 'min_person' => 'required',
                 'max_person' => 'required',
                 'event_picture' => 'image',
                 'seasons' => 'required',
                 'colour' => 'required',
                 'notepad' => 'required',
                 'ideas' => 'required',
   ]);





        $path = 'images/events/';
        $e = UserEvent::FindBySlugOrFail($slug);
        $e->user_id = trim(Auth::user()->id);
        $e->title = trim($request->title);
        $e->description = trim($request->description);
        $e->start_date = trim($request->start_date);
        $e->start_time = trim($request->start_time);
        $e->end_time = trim($request->end_time);
        $e->end_date = trim($request->end_date);
        $e->location = trim($request->location);
        $e->latitude = trim($request->latitude);
        $e->longitude = trim($request->longitude);
        $e->event_type = trim($request->event_type);
        $e->event_budget = trim($request->event_budget);
        $e->long_description = trim($request->long_description);
        $e->min_person = trim($request->min_person);
        $e->max_person = trim($request->max_person);
        $e->seasons = trim($request->seasons);
        $e->colour = trim($request->colour);
        $e->ideas = trim($request->ideas);
        $e->notepad = trim($request->notepad);
        $e->event_picture = $request->hasFile('event_picture') ? uploadFileWithAjax($path, $request->event_picture) : $e->event_picture;
        $e->save();
          
        $url = url(route('user_show_detail_event',$e->slug));

        $categories = $request->event_categories;
        $u = Auth::user();
        UserEventMetaData::where('event_id', $e->id)->delete();
        $this->save_event_meta_data($categories,$u,$e);
        $u->login_count = 1;
        $u->save();

 
 
    	return redirect()->route('user_events')->with('flash_message', 'User Event has been updated successfully');
    }

    public function save_event_meta_data($categories, $user, $event) {
        foreach ($categories as $key => $value) {
            $meta = new UserEventMetaData;
            $meta->parent = 0;
            $meta->user_id = $user->id;
            $meta->event_id = $event->id;
            $meta->type = 'events';
            $meta->key = 'category_id';
            $meta->key_value = $value;
            $meta->save();
        }
    }

}
