$(document).on 'turbolinks:load', ->
	$('.establishment_icons_background').hide()
	$('.telephone').hide()
	$('.address').hide()
	$('.social').hide()
	$('.rating').hide()

	$('.call').on 'click', ->
		$('.establishment_icons_background, .telephone').show(500)

	$('.place').on 'click', ->
		$('.establishment_icons_background, .address').show(500)

	$('.star').on 'click', ->
		$('.establishment_icons_background, .rating').show(500)

	$('.world').on 'click', ->
		$('.establishment_icons_background, .social').show(500)

	$('.close').on 'click', ->
		$('.establishment_icons_background, .telephone, .address, .social, .rating').hide(500)