# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#login-form').validate
  submitHandler: (form) ->
    form.submit()
    return
  errorLabelContainer: '#errors'
  wrapper: 'li'
  rules:
    'user[email]':
      required: true
      email: true
      minlength: 8
    'user[password]':
      required: true
      minlength: 8
  messages:
    'user[email]':
      required: 'Email can\'t be blank'
      email: 'Please enter a valid email (name@domain.com)'
      minlength: 'Email length must be greater than 8 characters'
    'user[password]':
      required: 'Password can\'t be blank'
      minlength: 'Email length must be greater than 8 characters'
