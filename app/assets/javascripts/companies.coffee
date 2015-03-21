# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $new_company_validator = $('form#new_company').validate({
        rules: {
          "company[name]": {required: true}
        },
        errorElement: 'span',
        errorClass: 'validate-info-error',
        onsubmit: true
      });
  $edit_company_validator = $("form[id^='edit_company']").validate({
        rules: {
          "company[name]": {required: true}
        },
        errorElement: 'span',
        errorClass: 'validate-info-error',
        onsubmit: true
      });
