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
        $user = Auth::User();
        $request['user_id'] = $user->id;
    	$event = UserEvent::create($request->all());
        $this->save_event_meta_data($request->event_categories, $user, $event);
    	return redirect()->route('user_events')->with('flash_message', 'User Event has been saved successfully');
    }

    public function getEventCategories(Request $request) {
    	$event = Event::with(['categoryVariation' => function($q) {
            $q->groupBy('category_id');
        }, 'categoryVariation.category'])
        ->find($request->id);
    	return response()->json($event);
    }

    public function showEditEvent($slug) {
    	$events = Event::where('status', 1)->get();
    	$user_event = UserEvent::FindBySlugOrFail($slug);
        
        foreach ($user_event->eventCategories as $key => $value) {
          $cat_ids[$key] = $value->key_value;
        }

        $user_event['categories'] = $cat_ids ? json_encode($cat_ids) : [];
        return view('users.events.edit')->with(['events' => $events, 'user_event' => $user_event]);
    }

    public function showDetailEvent($slug) {
        $events = Event::where('status', 1)->get();
        $user_event = UserEvent::FindBySlugOrFail($slug);
        return view('users.events.detail')->with(['events' => $events, 'user_event' => $user_event]);
    }

    public function update(Request $request, $slug) {
        $user = Auth::User();
		$user_event = UserEvent::FindBySlugOrFail($slug);
        UserEventMetaData::where('event_id', $user_event->id)->delete();
        $this->save_event_meta_data($request->event_categories, $user, $user_event);
    	$user_event->update($request->all());
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
