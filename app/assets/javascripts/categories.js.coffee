# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  save_page_list = ->
    arraied   = $(@).nestedSortable 'serialize', 'key': 'category_ids'
    $.post '/categories/sort', arraied

  $('#categories-root').nestedSortable  handle: 'div',
                                        items: 'li',
                                        toleranceElement: '> div',
                                        listType: 'ul',
                                        update: save_page_list
