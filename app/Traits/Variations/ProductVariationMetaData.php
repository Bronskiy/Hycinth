<?php
namespace App\Traits\Variations;
use App\Traits\Variations\VariationFiledArray;

trait ProductVariationMetaData{
use VariationFiledArray;



public function varaitionFields($type,$old=[])
{


	  $fields = $this->addArrayOfAttributesOfFields();

	 if(@sizeof($fields)){
	 	 return $this->getFieldHTML($fields[$type],$type,$old);
	 }
}

#----------------------------------------------------------------------------
#----------------------------------------------------------------------------
#----------------------------------------------------------------------------

public function getFieldHTML($fields,$type,$old)
{
   $text = '';
   foreach ($fields as $k => $v) {
   	 $text .= $this->getFieldInputs($v,$type,$old);
   }
   return $text;
}

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------


public function getFieldInputs($k,$type,$old)
{

   $type = $k['type'];
   switch ($type) {
   		case 'color':
   			return $this->colorField($k,$old);
   			break;
   		
   		default:
   			# code...
   			break;
   	}	
}








}































