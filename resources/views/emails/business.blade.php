@component('mail::message')
# Introduction

Hello {{ $data->user->name }}.

Your Business has rejected by admin because of your details is incorrect please the below link.

@component('mail::button', ['url' => url($data->vendor_page)])
click here
@endcomponent

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Comment</th>
      <th scope="col">Basic Info</th>
      <th scope="col">Photo Comment</th>
      <th scope="col">Faq Comment</th>
      <th scope="col">Venue Comment</th>
      <th scope="col">Description Comment</th>
      <th scope="col">Amenity Comment</th>
      <th scope="col">Deal Comment</th>
      <th scope="col">Prohibtion & Restrictions Comment</th>
    </tr>
  </thead>
  <tbody>
  	<tr>
      <th scope="row">1</th>
      <td>{{$data->comment ? $data->comment : '--'}}</td>
      <td>{{$data->basic_info_comment ? $data->basic_info_comment : '--'}}</td>
      <td>{{$data->photo_comment ? $data->photo_comment : '--'}}</td>
      <td>{{$data->faq_comment ? $data->faq_comment : '--'}}</td>
      <td>{{$data->venue_comment ? $data->venue_comment : '--'}}</td>
      <td>{{$data->description_comment ? $data->description_comment : '--'}}</td>
      <td>{{$data->amenity_comment ? $data->amenity_comment : '--'}}</td>
      <td>{{$data->deal_comment ? $data->deal_comment : '--'}}</td>
      <td>{{$data->prohibtion_estrictions_comment ? $data->prohibtion_estrictions_comment : '--'}}</td>
    </tr>
  </tbody>
</table>

Thanks,<br>
{{ config('app.name') }}
@endcomponent
