
<?php $sripeArray = SripeAccount(); ?>
@if(isset($_GET['code']))
<?php

 
                            $code = $_GET['code'];
                            $token_request_body = array(
                              'grant_type' => 'authorization_code',
                              'client_id' => $sripeArray['client_id'],
                              'code' => $code,
                              'client_secret' => $sripeArray['sk']
                            );

                            define('TOKEN_URI', 'https://connect.stripe.com/oauth/token');
                            define('AUTHORIZE_URI', 'https://connect.stripe.com/oauth/authorize');

                            $req = curl_init(TOKEN_URI);
                            curl_setopt($req, CURLOPT_RETURNTRANSFER, true);
                            curl_setopt($req, CURLOPT_POST, true );
                            curl_setopt($req, CURLOPT_POSTFIELDS, http_build_query($token_request_body));

                            // TODO: Additional error handling
                            $respCode = curl_getinfo($req, CURLINFO_HTTP_CODE);
                            $resp = json_decode(curl_exec($req), true);
                            curl_close($req);
  ?>



@if(!empty($resp['stripe_user_id']))


                            <form action="" method="post">

                              <input type="text" name="stripe_account_id" value="<?php echo $resp['stripe_user_id']; ?>" class="form-control wdth" readonly>
                              {{csrf_field()}}

                              <div class="col-md-6 col-sm-6 col-xs-12">
                                <button class="btn btn-primary">Activate Account</button>
                              </div>
                              </form>

@endif
                            
@elseif (isset($_GET['error'])) 

                            echo $_GET['error_description'];

 @else                         
<?php
                            $authorize_request_body = array(
                              'response_type' => 'code',
                              'scope' => 'read_write',
                              'client_id' =>  $sripeArray['client_id']
                            );

                            define('AUTHORIZE_URI', 'https://connect.stripe.com/oauth/authorize');

                            $url = AUTHORIZE_URI . '?' . http_build_query($authorize_request_body);


 
 ?>


@if(!empty(Auth::user()->stripe_account))


   <table class="table">
     <tr>
        <th width="200">Account Id</th><td>{{Auth::user()->stripe_account}}</td>
     </tr><tr>
        <th width="200">Account Status</th><td>Active</td>
     </tr>
   </table>


@else


                           
                           <a href='{{$url}}' class='btn btn-primary'>Connect with Stripe</a> 
@endif


    


@endif