
<?php
$Price = '';
$Description = '';
$Menus = '';
$Amenities = '';
$Events = '';
$Games = '';
$Ons = '';
$Type = '';
$Persons = '';
$Hours = '';
$Days = '';
 
 $header = '<th></th>';
?>



@foreach($packages as $p)
<?php
$header .='<th>'.$p->title.'</th>';
$Price .='<td>'.custom_format($p->price,2).'</td>';
$Description .='<td>'.$p->description.'</td>';
$Menus .='<td>'.$p->menu.'</td>';
$Amenities .='<td></td>';
$Events .='<td></td>';
$Games .='<td></td>';
$Ons .='<td></td>';
$Type .='<td></td>';
$Persons .='<td></td>';
$Hours .='<td></td>';
$Days .='<td></td>';

?>
@endforeach



<table class="table table-bordered compere-table">
            <thead>
               <tr>
                  {!!$header!!}
                  
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td><label>Price</label></td>
                  {!! $Price !!}
               </tr>
               <tr>
                  <td><label>Description</label></td>
                  {!! $Description !!}
               </tr>
               <tr>
                  <td><label>Menus</label></td>
                  {!! $Menus !!}
               </tr>
               <tr>
                  <td><label>Amenities</label></td>
                  {!! $Amenities !!}
               </tr>
               <tr>
                  <td><label>Events</label></td>
                  {!! $Events !!}
               </tr>
               <tr>
                  <td><label>Games</label></td>
                  {!! $Games !!}
               </tr>
               <tr>
                  <td><label>Add Ons</label></td>
                  {!! $Ons !!}
               </tr>
               <tr>
                  <td><label>Price Type</label></td>
                  {!! $Type !!}
               </tr>
               <tr>
                  <td><label>Persons</label></td>
                  {!! $Persons !!}
               </tr>
               <tr>
                  <td><label>Number Of Hours</label></td>
                  {!! $Hours !!}
               </tr>
               <tr>
                  <td><label>Number Of Days</label></td>
                  {!! $Days !!}
               </tr>
            </tbody>

 </table>