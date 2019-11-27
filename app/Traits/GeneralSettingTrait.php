<?php
namespace App\Traits;


use App\Models\Admin\PageMetaTag;

trait GeneralSettingTrait {



 public $ignors = [
     '_token'
 ];


  public function getArrayValue($slug)
 {
	    switch ($slug) {
		 	case 'homepage':
		 		    return [
                       // Meta Data
                       'meta_title' => getAllValueWithMeta('meta_title', $slug),
                       'meta_description' => getAllValueWithMeta('meta_description', $slug),
                       'meta_keyword' => getAllValueWithMeta('meta_keyword', $slug),
		 		    	         
                       // Slider
                       'slider_title' => getAllValueWithMeta('slider_title', $slug),
                       'slider_tagline' => getAllValueWithMeta('slider_tagline', $slug),
                       'slider_video_url' => getAllValueWithMeta('slider_video_url', $slug),
                       'slider_button_title' => getAllValueWithMeta('slider_button_title', $slug),
                       'slider_button_url' => getAllValueWithMeta('slider_button_url', $slug),

						            // Section 1 
                       'section1_title' => getAllValueWithMeta('section1_title', $slug),
                       'section1_tagline' => getAllValueWithMeta('section1_tagline', $slug),

                       // Section 2
                       'section2_title' => getAllValueWithMeta('section2_title', $slug),
                       'section2_tagline' => getAllValueWithMeta('section2_tagline', $slug),
                       'section2_image' => getAllValueWithMeta('section2_image', $slug),
                       'section2_image_tagline' => getAllValueWithMeta('section2_image_tagline', $slug),

                       // Section 3
                       'section3_title' => getAllValueWithMeta('section3_title', $slug),
                       'section3_tagline' => getAllValueWithMeta('section3_tagline', $slug),
                       'section3_video' => getAllValueWithMeta('section3_video', $slug),
                       'section3_video_poster' => getAllValueWithMeta('section3_video_poster', $slug),

                       // Section 4
                       'section4_title1' => getAllValueWithMeta('section4_title1', $slug),
                       'section4_tagline1' => getAllValueWithMeta('section4_tagline1', $slug),
                       'section4_description' => getAllValueWithMeta('section4_description', $slug),
                       'section4_title2' => getAllValueWithMeta('section4_title2', $slug),
                       'section4_tagline2' => getAllValueWithMeta('section4_tagline2', $slug),
                       'section4_image' => getAllValueWithMeta('section4_image', $slug),
                       'section4_button_title' => getAllValueWithMeta('section4_button_title', $slug),
                       'section4_button_url' => getAllValueWithMeta('section4_button_url', $slug),

                       // Section 5
                       'section5_title' => getAllValueWithMeta('section5_title', $slug),
		 		    ];
		 		break;
		 	case 'login':
		 		    return [
                      // Meta Data
                       'meta_title' => getAllValueWithMeta('meta_title', $slug),
                       'meta_description' => getAllValueWithMeta('meta_description', $slug),
                       'meta_keyword' => getAllValueWithMeta('meta_keyword', $slug),

                       'login_title' => getAllValueWithMeta('login_title', $slug),
                       'heading' => getAllValueWithMeta('heading', $slug),
                       'login_banner' => getAllValueWithMeta('login_banner', $slug),
                       'description' => getAllValueWithMeta('description', $slug),
                       
                       // Section 1
                       'section1_title' => getAllValueWithMeta('section1_title', $slug),
                       'section1_tagline' => getAllValueWithMeta('section1_tagline', $slug),
                       'section1_video' => getAllValueWithMeta('section1_video', $slug),
                       'section1_video_poster' => getAllValueWithMeta('section1_video_poster', $slug),
                       
                       // Section 2
                       'section2_title' => getAllValueWithMeta('section2_title', $slug),
		 		    ];
		 		break;
		 	case 'signup': 
		 	  	return [
                        // Meta Data
                       'meta_title' => getAllValueWithMeta('meta_title', $slug),
                       'meta_description' => getAllValueWithMeta('meta_description', $slug),
                       'meta_keyword' => getAllValueWithMeta('meta_keyword', $slug),

                       'signup_title' => getAllValueWithMeta('signup_title', $slug),
					             'signup_background_image' => getAllValueWithMeta('signup_background_image', $slug),
                       'heading' => getAllValueWithMeta('heading', $slug),
                       'signup_banner' => getAllValueWithMeta('signup_banner', $slug),
                       'description' => getAllValueWithMeta('description', $slug),
                       
                       // Section 1
                       'section1_title' => getAllValueWithMeta('section1_title', $slug),
                       'section1_tagline' => getAllValueWithMeta('section1_tagline', $slug),
                       'section1_video' => getAllValueWithMeta('section1_video', $slug),
                       'section1_video_poster' => getAllValueWithMeta('section1_video_poster', $slug),
                       
                       // Section 2
                       'section2_title' => getAllValueWithMeta('section2_title', $slug),
		 	  	];
		 	case 'vendor-signup': 
		 	  	return [
                        // Meta Data
                       'meta_title' => getAllValueWithMeta('meta_title', $slug),
                       'meta_description' => getAllValueWithMeta('meta_description', $slug),
                       'meta_keyword' => getAllValueWithMeta('meta_keyword', $slug),
                       
          					   'signup_title' => getAllValueWithMeta('signup_title', $slug),
                       'signup_background_image' => getAllValueWithMeta('signup_background_image', $slug),
                       'heading' => getAllValueWithMeta('heading', $slug),
                       'signup_banner' => getAllValueWithMeta('signup_banner', $slug),
                       'description' => getAllValueWithMeta('description', $slug),
                       
                       // section 1
                       'section1_title' => getAllValueWithMeta('section1_title', $slug),
                       'section1_tagline' => getAllValueWithMeta('section1_tagline', $slug),
                       'section1_video' => getAllValueWithMeta('section1_video', $slug),
                       'section1_video_poster' => getAllValueWithMeta('section1_video_poster', $slug),
                       
                       // Section 2
                       'section2_title' => getAllValueWithMeta('section2_title', $slug),
		 	  	];
		 	case 'global-settings': 
          return [
                  'google_api_key' => getAllValueWithMeta('google_api_key', $slug),
          ];
		 	default:
		 		# code...
		 		break;
		 }	 
		 
 }




     
}




















