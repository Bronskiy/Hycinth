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
use App\Models\Admin\EmailTemplate;
use App\Traits\EmailTraits\UserOrderSuccess;
use App\Traits\EmailTraits\AdminOrderSuccess;
use App\Traits\EmailTraits\VendorOrderSuccess;
use App\Traits\EmailTraits\VendorApprovalNotification;
use App\Traits\EmailTraits\VendorRejectionNotification;
trait UserNotificationTrait {

use UserOrderSuccess;
use AdminOrderSuccess;
use VendorOrderSuccess;
use VendorApprovalNotification;
use VendorRejectionNotification;






}