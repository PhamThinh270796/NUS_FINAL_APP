window.setTimeout (->
  $('.alert').fadeTo(500, 0).slideUp 500, ->
    $(this).remove()
    return
  return
), 2000