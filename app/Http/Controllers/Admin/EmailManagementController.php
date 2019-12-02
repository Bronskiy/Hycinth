<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Admin\EmailTemplate;

class EmailManagementController extends Controller
{
    public function index() {
    	$emails = EmailTemplate::all();
    	return view('admin.emails.index')->with(['title'=> 'Email Management', 'emails' => $emails]);
    }

    public function update(Request $request, $id) {
    	$email = EmailTemplate::find($id);
    	$email->update($request->all());
    	return redirect()->route('admin.emails.index')->with('flash_message', 'Email Template Has Updated Successfully');
    }
}
