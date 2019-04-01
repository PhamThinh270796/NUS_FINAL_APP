$(document).on 'turbolinks:load', () ->
  readURL = (input) ->
    if input.files and input.files[0]
      reader = new FileReader

      reader.onload = (e) ->
        $('#imagePreview').css 'background-image', 'url(' + e.target.result + ')'
        $('#imagePreview').hide()
        $('#imagePreview').fadeIn 650
        return

      reader.readAsDataURL input.files[0]
    return


  $('body').on 'change', '#imageUpload', () ->
    readURL this
$ ->
  $('#new_user').validate
    submitHandler: (form) ->
      form.submit()
      return
    errorLabelContainer: '#errors'
    wrapper: 'li'
    rules:
      'user[first_name]':
        required: true
      'user[last_name]':
        required: true
      'user[email]':
        required: true
        email: true
        minlength: 5
      'user[password]':
        required: true
        minlength: 5
      'user[password_confirmation]':
        equalTo: "#user_password"
    messages:
      'user[first_name]':
        required: I18n.t('first_name_cant_be_blank')
      'user[last_name]':
        required: I18n.t('last_name_cant_be_blank')
      'user[email]':
        required: I18n.t('email_cant_be_blank')
        email: I18n.t('valid_email')
        minlength: I18n.t('email_min_length')
      'user[password]':
        required: I18n.t('password_cant_be_blank')
        minlength: I18n.t('password_min_length')
      'user[password_confirmation]':
        equalTo: I18n.t('confirmation_password_must_match_password')
