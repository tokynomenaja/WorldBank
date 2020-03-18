// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).ready(function(){
	$("#ptf-listener").click(function(e){
		$("#ptf-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})

	$("#check").click(function(e){
		$("#scontent").toggleClass("toggleclass")

		$("#ptf-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})

	$("#appui-listener").click(function(e){
		$("#appui-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})

	$("#filiere-listener").click(function(e){
		$("#filiere-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})

	$("#zone-listener").click(function(e){
		$("#zone-check").toggleClass("toggleclass")

		$("#ptf-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#scontent").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})

	$("#range-drop").click(function(e){
		$("#range-content").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
	})

	$("#year-drop").click(function(e){
		$("#range-year-content").toggleClass("toggleclass")

		$("#ptf-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#scontent").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})

	$("#beneficiaire-listener").click(function(e){
		$("#beneficiaire-content").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})

	$("#iga-listener").click(function(e){
		$("#iga-content").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
	})
});
