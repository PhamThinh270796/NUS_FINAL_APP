# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
i = 0
$(document).on 'turbolinks:load', () ->
  readURL = (input) ->
    self  = input;
    if input.files
      reader = new FileReader

      reader.onload = (e) ->
        parent = $(self).parents('.avatar-upload');
        $(parent).find('.avatar-preview').css('background-image', 'url(' + e.target.result + ')')
        $(parent).find('.avatar-preview').hide()
        $(parent).find('.avatar-preview').fadeIn(650)

      reader.readAsDataURL input.files[0]
    return

  addPhotoItem = (input_photo, number) ->
    photo_id = "photo-item-" + i.toString()
    input_photo.attr('id', photo_id)
    input_photo.find('input').first().attr 'name', 'album[photos_attributes][' + number + '][user_id]'
    input_photo.find('input').first().attr 'id', 'album_photos_attributes_' + number + '_user_id'
    input_photo.find('input').last().attr 'name', 'album[photos_attributes][' + number + '][path]'
    input_photo.find('input').last().attr 'id', 'album_photos_attributes_' + number + '_path'
    input_photo.appendTo('#photo-row')

  $('body').on('change', '.image-upload', () ->
    readURL this
    photo = $('#photo-item-' + i).clone()
    i += 1
    addPhotoItem photo,i
  )

  $('#new_album').submit ->
    $('#photo-row').children('div:last').remove()
    return true