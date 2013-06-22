url = "http://api.flickr.com/services/feeds/photos_public.gne?format=json&jsoncallback=?"
 
xhr = $.getJSON url, (data, success, xhr) ->
  $.each data.items, (i, photo) -> 
    s = """
      <li>
      <a href="#">
      <img src="#{photo.media.m}" />
      </a></li>
    """
    s = $(s)
    $('#images').append(s)
    setTimeout ->
      #console.log i
      s.addClass('show')
    , 500 * i