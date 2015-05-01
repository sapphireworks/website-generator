# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $(document).on 'change', '#customize_theme_id', (evt) ->
    $.ajax 'update_themes',
      type: 'GET'
      dataType: 'script'
      data: {
        id : 1
        theme_id: $("#customize_theme_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic theme select OK!")