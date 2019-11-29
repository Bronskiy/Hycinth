@extends('emails.layout')
@section('content')                     
            <!-- welcom text here -->
          <tr style="background-color: #fff;">
                  <td style="">
                    <table align="center" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
                      <tbody>
                        <tr>
                          <td style="background-color: #fff; padding-top: 30px;  padding-bottom: 30px; padding-left: 30px; padding-right: 30px; border-top-left-radius: 20px; border-top-right-radius: 20px; border-bottom-left-radius: 20px; border-bottom-right-radius: 20px;">
                            <table align="center" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
                              <tbody>
                  <tr>
                  <td>
                    <table align="center" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;">
                    <tbody>
                      <tr>
                      <td style="font-family: 'Maven Pro', sans-serif; font-size: 24px; line-height: 1; color: #333; border-left: 2px solid #36496c; padding-left: 10px;">Hello {{ $data->user->name }}</td>
                    </tr>
                    </tbody>
                  </table>
                  </td>
                </tr>
                                <tr>
                                  <td style="font-family: 'Maven Pro', sans-serif; font-size: 16px; line-height: 22px; color: #726c6c; padding-top: 10px;">Your Business has rejected by admin because of your details is incorrect please the below link.</td>
                                </tr>
                <tr>
                                  <td style="padding-top: 20px;" align="left"><a href="{{url($data->vendor_page)}}" target="_blank" style="background-color: #36496c; color: #fff; text-transform: capitalize; padding-top: 12px; padding-right: 20px; padding-bottom: 12px; padding-left: 20px; text-decoration: none; display: inline-block; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; font-family: 'Maven Pro', sans-serif; font-size: 14px; font-weight: 600; text-transform: uppercase;">Open Link</a></td>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
            <!-- Ends here -->
        <!-- info table starts here -->
            <tr>
              <td style="padding-left: 10px; padding-right: 10px; padding-bottom: 30px;">
                <table align="center" cellpadding="0" cellspacing="0" width="100%" style= "border-collapse: collapse; border: 1px solid #efefef;">
                <tbody>
                  <tr>
                  <td width="100%" style="vertical-align: top;">
                    <table align="center" cellpadding="0" cellspacing="0" width="100%" style= "border-collapse: collapse;">
                    <tbody>
                      <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 18px; color: #0c0c0c; padding-top: 10px; padding-bottom: 10px; font-weight: 600; background-color: #efefef; padding-left: 10px; padding-right: 10px;" align="left">Feature</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 18px; color: #0c0c0c; padding-top: 10px; padding-bottom: 10px; font-weight: 600; background-color: #efefef; padding-left: 10px; padding-right: 10px;" align="left">Comment</td>                    
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->comment ? $data->comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Basic Info</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->basic_info_comment ? $data->basic_info_comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Photo Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->photo_comment ? $data->photo_comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Faq Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->faq_comment ? $data->faq_comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Venue Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->venue_comment ? $data->venue_comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Description Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->description_comment ? $data->description_comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Amenity Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->amenity_comment ? $data->amenity_comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Deal Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->deal_comment ? $data->deal_comment : '--'}}</td>
                    </tr>
                    <tr>
                      <td style="font-family: Verdana, 'Times New Roman', Arial;font-size: 14px;line-height: 18px;color: #0c0c0c;padding-top: 10px;padding-bottom: 10px;font-weight: 600;padding-left: 10px;padding-right: 10px;">Prohibtion & Restrictions Comment</td>
                      <td style="font-family: Verdana, 'Times New Roman', Arial; font-size: 14px; line-height: 22px; color: #0c0c0c; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px;">{{$data->prohibtion_estrictions_comment ? $data->prohibtion_estrictions_comment : '--'}}</td>
                    </tr>
                    </tbody>
                  </table>
                  </td>                 
                </tr>
                </tbody>
              </table>
              </td>
            </tr>
            <!-- info table ends here -->
            <!-- footer here -->
@endsection    