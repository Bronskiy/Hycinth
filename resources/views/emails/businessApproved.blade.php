@component('mail::message')
# Business

Your Business has approved.

@component('mail::button', ['url' => url($data)])
click here
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
