$(document).on 'turbolinks:load', ->
	$('.establishment_icons_background').hide()

	$('.items').on 'click', ->
		$('.establishment_icons_background').show(500)

	$('.close').on 'click', ->
		$('.establishment_icons_background').hide(500)