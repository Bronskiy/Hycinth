<?php
namespace App\Traits\EmailTraits;
use Illuminate\Http\Request;
use App\VendorPackage;
use App\PackageMetaData;
use App\UserEventMetaData;
use Auth;
use App\Models\Vendors\DiscountDeal;
use App\Models\Order;
use App\Models\EventOrder;
use Session;

trait EmailTemplateTrait {


protected $emailTemplate = [
      'UserOrderSuccessFullNotification' => 4,
      'AdminOrderSuccessFullNotification' => 5,
      'VendorOrderSuccessFullNotification' => 6,
      'VendorApprovalNotificationFullNotification' => 7,
      'VendorRejectionNotificationFullNotification' => 8,
      'VendorInvitingRequestNotificationFullNotification' => 9,
      'NewVendorEmailNotificationFullNotification' => 10,
      'NewVendorEmailJoinNotificationFullNotification' => 11,
];


public $adminEmail = 'bajwa9876470491@gmail.com';






}

