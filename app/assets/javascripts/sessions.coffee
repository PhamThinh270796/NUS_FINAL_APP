# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', () ->
  form = $('#login-form')
  form.validate
    submitHandler: (form) ->
      form.submit()
      return
    errorLabelContainer: '#errors'
    wrapper: 'li'
    rules:
      'user[email]':
        required: true
        email: true
        minlength: 5
      'user[password]':
        required: true
        minlength: 5
    messages:
      'user[email]':
        required: I18n.t('email_cant_be_blank')
        email: I18n.t('valid_email')
        minlength: I18n.t('email_min_length')
      'user[password]':
        required: I18n.t('password_cant_be_blank')
        minlength: I18n.t('password_min_length')
