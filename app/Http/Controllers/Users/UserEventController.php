<?php

namespace App\Http\Controllers\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Event;
use App\UserEvent;
use App\CategoryVariation;

class UserEventController extends Controller
{
    public function index() {
    	$events = UserEvent::all();
    	return view('users.events.index')->with('events', $events);
    }

    public function showCreateEvent() {
    	$events = Event::where('status', 1)->get();
    	return view('users.events.create')->with(['events' => $events]);
    }

	public function create(Request $request) {
		$request['categories'] = json_encode($request->event_categories);
    	UserEvent::create($request->all());
    	return redirect()->route('user_events')->with('flash_message', 'User Event has been saved successfully');
    }

    public function getEventCategories(Request $request) {
    	$event = Event::with(['categoryVariation', 'categoryVariation.category'])->find($request->id);
    	return response()->json($event);
    }

    public function showEditEvent($slug) {
    	$events = Event::where('status', 1)->get();
    	$user_event = UserEvent::FindBySlugOrFail($slug);
    	return view('users.events.edit')->with(['events' => $events, 'user_event' => $user_event]);
    }

    public function update(Request $request, $slug) {
		$request['categories'] = json_encode($request->event_categories);
		$user_event = UserEvent::FindBySlugOrFail($slug);
    	$user_event->update($request->all());
    	return redirect()->route('user_events')->with('flash_message', 'User Event has been updated successfully');
    }

}
