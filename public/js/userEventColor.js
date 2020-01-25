
// Get Current color and append the value in next input
function loadColorJQ() {
    $('.ColorGet').on('change', function() { 
      var val = $( this ).val();
      $( this ).next().val(val);
    });
  }

loadColorJQ();

// Add Remove multiple color for event
$(document).ready(function() {
 
    const maxField = 4; //Input fields increment limitation
    const wrapper = $('.field_wrapper'); //Input field wrapper
    const addBtn = ` <button class="btn btn-success add_button" type="button" 
				    	style="margin-left: 0px;height: 54px; width: 120px">
				    	<i class="fas fa-plus"></i> Add 
    				 </button>`;
    const removeBtn = `<button class="btn btn-danger add-more" type="button"
    						style="margin-left: 0px; height: 54px; width: 120px">
					    	<i class="fas fa-trash-alt"></i> Remove
					   </button>`;
    const fieldHTML = `
    <div class="element col-lg-3 col-md-6">
	     <div class="pick-color-field-wrap">
                <div class="form-group">
                  <input placeholder="Colour Name" name="colourNames[]" class="form-control"/>
                </div>
              <div class="form-group">
                <input type="color" class="ColorGet" style="width: 46px; margin-left: -2px;">
                <input type="text" readonly class="form-control ColourSelect" name="colours[]">
              </div>
          </div>

	    <div class="input-group-btn color-btn remove_button">
		    ${removeBtn}
	    </div>
	</div>`;

    let x = parseInt($('#countColours').val()); //Initial field counter is 1
    
    //Once add button is clicked

function addBtnJQ(addButton) {

    $(addButton).click(function() {
        //Check maximum number of input fields
        if(x < maxField) {
            x++; //Increment field counter
            $(wrapper).append(fieldHTML); // Add field html
        	loadColorJQ(); 
        }
        if(x === 4) {
        	$($('.color-btn')[0]).addClass('remove_button');
        	$($('.color-btn')[0]).html(removeBtn);
        }
    });
}
    
addBtnJQ('.add_button');

    //Once remove button is clicked
    $(wrapper).on('click', '.remove_button', function(e) {
        e.preventDefault();
        $(this).parent('div').remove(); //Remove field html
        x--; //Decrement field counter
        if(x < maxField) {
	        $($('.color-btn')[0]).removeClass('remove_button');
        	$($('.color-btn')[0]).html(addBtn);
        	addBtnJQ('.add_button');
        }
    });

    //  $("#AddNewColorEvent").click(function(){
 //  // Finding total number of elements added
 //  var total_element = $(".element").length;
 //  var lastid = $(".element:last").attr("id");
 //  var split_id = lastid.split("_");
 //  var nextindex = Number(split_id[1]) + 1;

 //  var max = 4;
 //  // Check total number elements
 //  if(total_element < max ) {
 //   // Adding new div AddRemoveColorEvent after last occurance of element class
 //   $(".element:last").after("<div class='element col-lg-3 col-md-6'></div>");

 //   const div = `<div class="form-group">
 //   					<input type="color" class="ColorGet" style="width: 46px; margin-left: -2px;">
 //   					<input type="text" readonly class="form-control ColourSelect" name="colour[]"> 
 //   					<ul class="acrdn-action-btns">
 //   						<li>
	//    						<a href="javascript:void(0)" class="action_btn danger-btn remove_color_event" 
	//    						data-toggle="tooltip" title="" data-original-title="Delete">
 //   								<i class="fas fa-trash-alt"></i>
 //   							</a>
	//    					</li>
 //   					</ul>
 //   					</div>`;
 
 //   $("#div_" + nextindex).append(div); 
 //  }
 //  // Load get solor function to select color
 //  loadColorJQ(); 
 // });

 //  // Remove element
 //  $("#AddRemoveColorEvent").on('click','.remove_color_event',function(){
 //    var id = this.id;
 //    var split_id = id.split("_");
 //    var deleteindex = split_id[1];

 //    // Remove <div> with id
 //    $("#div_" + deleteindex).remove();
 //  }); 


});

