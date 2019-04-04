# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.hover').mouseleave ->
  $(this).removeClass 'hover'
  return

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
    return