window.setTimeout (->
  $('.alert').fadeOut(500, 0).slideUp 500, ->
    $(this).remove()
    return
  return
), 2000
