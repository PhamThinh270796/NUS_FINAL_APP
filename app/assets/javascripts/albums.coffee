# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
photoItemIndex = 0
$(document).on 'turbolinks:load', () ->
  readURL = (input) ->
    self  = input;
    if input.files
      reader = new FileReader

      reader.onload = (e) ->
        parent = $(self).parents('.avatar-upload').find('.image-preview');
        parent.css('background-image', 'url(' + e.target.result + ')')
        parent.find('.image-preview').hide()
        parent.find('.image-preview').fadeIn(650)

      reader.readAsDataURL input.files[0]
    return

  addPhotoItem = (photoItem, number) ->
    photo_id = "photo-item-" + photoItemIndex.toString()
    photoItem.attr('id', photo_id)
    photoInput = photoItem.find('input')
    photoInput.first().attr 'name', 'album[photos_attributes][' + number + '][user_id]'
    photoInput.first().attr 'id', 'album_photos_attributes_' + number + '_user_id'
    photoInput.last().attr 'name', 'album[photos_attributes][' + number + '][path]'
    photoInput.last().attr 'id', 'album_photos_attributes_' + number + '_path'
    photoItem.appendTo('#photo-row')

  $('body').on('change', '.image-upload', () ->
    readURL this
    clondePhoto = $('#photo-item-' + photoItemIndex).clone()
    photoItemIndex += 1
    addPhotoItem clondePhoto,photoItemIndex
  )

  $('#new_album').submit ->
    $('#photo-row').children('div:last').remove()
    return true