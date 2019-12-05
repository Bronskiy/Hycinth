$.validator.addMethod("chrequired", function(value, elem, param) {
 return value > 0;
},"You must select at least one!");

// Ck-Editor
$.validator.addMethod('ckrequired', function (value, element, params) {
  var idname = jQuery(element).attr('id');
  var editor = CKEDITOR.instances[idname]; 
  var messageLength = jQuery.trim(editor.getData() );
  var ckValue = GetTextFromHtml(editor.getData()).replace(/<[^>]*>/gi, '').trim();
  editor.on("change", function (evt) {
    ckValue = GetTextFromHtml(editor.getData()).replace(/<[^>]*>/gi, '').trim(); 
      if(ckValue.length !== 0)
        $(`#${idname}`).closest('.form-group').find('label').eq(1).css('display', 'none');
      else
        $(`#${idname}`).closest('.form-group').find('label').eq(1).css('display', 'block');
  });
  editor.updateElement();
  return !params || ckValue.length !== 0;
}, "This field is required.");

function GetTextFromHtml(html) {  
    var dv = document.createElement("DIV");  
    dv.innerHTML = html;
    return dv.textContent || dv.innerText || "";  
}

// url
$.validator.addMethod('isUrl', function(s, element){
  var regexp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/
  return this.optional(element) || regexp.test(s)
}, 'Please enter Valid Url');

// us phone
 $.validator.addMethod("phoneUS", function (value, element) {
  return this.optional(element) || value == value.match(/^(?=.*[0-9])[- +()0-9]+$/);
}, "Please specify a valid phone number."); 

//Alphanumeric-Add-Method
$.validator.addMethod("alphanumeric", function (value, element) {
  return this.optional(element) || /^[a-z\d\-_\s]+$/i.test(value);
}, "Please enter alpha-numeric characters only."); 

// letters only 
$.validator.addMethod("lettersonly", function(value, element) {
  return this.optional(element) || /^[a-z ]+$/i.test(value);
}, "Letters only please");

// greater than equals to

$.validator.addMethod('ge', function(value, element, param) {
  return this.optional(element) || value >= param;
}, `Must be greater than or equal to field min value`);

 // greater than equals to
$.validator.addMethod('res_number', function(value, element, param) {
  return this.optional(element) || !/\d/.test(value);
}, 'Please enter valid text');

// strong password
$.validator.addMethod("pwcheck", function(value, element) {
  return this.optional(element) || 
  /[!"#$%&'()*+,.\/:;<=>?@[\\\]^`{|}~]/.test(value)  // has a special charactor
  //  /^[A-Za-z0-9\d=!\-@._*]+$/.test(value) //only allowed characters
  // /^[a-zA-Z0-9- ]*$/.test(value) // special charactor restricted
    && /[a-z]/.test(value) // has a lowercase letter
    && /[A-Z]/.test(value) // has a capital letter
    && /\d/.test(value) // has a digit      
}, 'digit, lowercase, capital, and special characters is required');

// validation for amount
$.validator.addMethod('amount', function(value, element, param) {
  return this.optional(element) || /^-?(?:\d+|\d{1,3}(?:[\s\.,]\d{3})+)(?:[\.,]\d+)?$/.test(value);
}, 'Please enter valid amount');

$.validator.addMethod("minDate", function(value, element) {
    var curDate = new Date();
    var inputDate = new Date(value);    

    if (inputDate == 'Invalid Date' || inputDate > curDate) {
      return true; 
    }
    return false;
}, "Please select date greater than of Current Date!");


$.validator.addMethod("minStartDate", function(value, element) {
    var curDate = new Date($('#start_date').val());
    var inputDate = new Date(value);    

    if (inputDate == 'Invalid Date' || inputDate > curDate) {
      return true; 
    }
    return false;
}, "Please select date greater than of Start Date!");

$.validator.addMethod('minPerson', function(value, element) {
  const minPer = $('#min_person').val();
  if(!minPer || parseInt(minPer) > parseInt(value)) {
    return false;
  }
   return true; 
}, `Must be greater than or equal to field min Person`);

