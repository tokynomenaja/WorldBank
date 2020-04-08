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


$(document).on('turbolinks:load', function() {


	$("#ptf-listener").click(function(e){
		$("#ptf-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#check").click(function(e){
		$("#scontent").toggleClass("toggleclass")

		$("#ptf-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#appui-listener").click(function(e){
		$("#appui-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#filiere-listener").click(function(e){
		$("#filiere-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#zone-listener").click(function(e){
		$("#zone-check").toggleClass("toggleclass")

		$("#ptf-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#scontent").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#range-drop").click(function(e){
		$("#range-content").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#year-drop").click(function(e){
		$("#range-year-content").toggleClass("toggleclass")

		$("#ptf-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#scontent").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#iga-listener").click(function(e){
		$("#iga-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
	})

	$("#forme-listener").click(function(e){
		$("#forme-check").toggleClass("toggleclass")

		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#appui-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
		$("#beneficiaire-check").addClass("toggleclass")
	})

	$("#beneficiaire-listener").click(function(e){
		$("#beneficiaire-check").toggleClass("toggleclass")

		$("#appui-check").addClass("toggleclass")
		$("#forme-check").addClass("toggleclass")
		$("#scontent").addClass("toggleclass")
		$("#ptf-check").addClass("toggleclass")
		$("#filiere-check").addClass("toggleclass")
		$("#zone-check").addClass("toggleclass")
		$("#range-year-content").addClass("toggleclass")
		$("#range-content").addClass("toggleclass")
		$("#iga-check").addClass("toggleclass")
	})
// validation compteur de mot
	var wordLen = 150;
	var len; // Maximum word length
	$('#comment_body').keyup(function(event) {	
		len = $('#comment_body').val().split(/[\s]+/);
		if (len.length > wordLen) { 
			if ( event.keyCode == 46 || event.keyCode == 8 ) {// Allow backspace and delete buttons
	    } else if (event.keyCode < 48 || event.keyCode > 57 ) {//all other buttons
	    	event.preventDefault();
	    }
		}
		console.log(len.length + " words are typed out of an available " + wordLen);
		wordsLeft = (wordLen) - len.length;
		$('.words-left').html(wordsLeft+ ' mots restants à taper');
		if(wordsLeft == 0) {
			$('.words-left').css({
				'background':'red'
			}).prepend('<i class="fa fa-exclamation-triangle"></i>');
		}
	});


//calendrier

	function padToTwo(number) {
	  if (number <= 9999) {
	    number = ("0" + number).slice(-2);
	  }
	  return number;
	}

	(function($) {
	  $.fn.monthly = function(options) {
	    var months = options.months || [
	        "janv",
	        "fév",
	        "mars",
	        "avr",
	        "mai",
	        "juin",
	        "juil",
	        "août",
	        "sept",
	        "oct",
	        "nov",
	        "dec"
	      ],
	      Monthly = function(el) {
	        this._el = $(el);
	        this._init();
	        this._render();
	        this._renderYears();
	        this._renderMonths();
	        this._bind();
	      };

	    Monthly.prototype = {
	      _init: function() {
	        this._el.html(months[0] + " " + options.years[0]);
	      },

	      _render: function() {
	        var linkPosition = this._el.offset(),
	          cssOptions = {
	            display: "none",
	            position: "absolute",
	            top:
	              linkPosition.top + this._el.height() + (options.topOffset || 0),
	            left: linkPosition.left
	          };
	        this._container = $('<div class="monthly-wrp">')
	          .css(cssOptions)
	          .appendTo($("body"));
	      },

	      _bind: function() {
	        var self = this;
	        this._el.on("click", $.proxy(this._show, this));
	        $(document).on("click", $.proxy(this._hide, this));
	        this._yearsSelect.on("click", function(e) {
	          e.stopPropagation();
	        });
	        this._container.on("click", "button", $.proxy(this._selectMonth, this));
	      },

	      _show: function(e) {
	        e.preventDefault();
	        e.stopPropagation();
	        this._container.css("display", "inline-block");
	      },

	      _hide: function() {
	        this._container.css("display", "none");
	      },

	      _selectMonth: function(e) {
	        var monthIndex = $(e.target).data("value"),
	          month = months[monthIndex],
	          year = this._yearsSelect.val();
	        this._el.html(month + " " + year);
	        if (options.onMonthSelect) {
	          options.onMonthSelect(monthIndex, month, year);
	        }
	      },

	      _renderYears: function() {
	        var markup = $.map(options.years, function(year) {
	          return "<option>" + year + "</option>";
	        });
	        var yearsWrap = $('<div class="years">').appendTo(this._container);
	        this._yearsSelect = $("<select>")
	          .html(markup.join(""))
	          .appendTo(yearsWrap);
	      },

	      _renderMonths: function() {
	        var markup = ["<table>", "<tr>"];
	        $.each(months, function(i, month) {
	          if (i > 0 && i % 4 === 0) {
	            markup.push("</tr>");
	            markup.push("<tr>");
	          }
	          markup.push(
	            '<td><button data-value="' + i + '">' + month + "</button></td>"
	          );
	        });
	        markup.push("</tr>");
	        markup.push("</table>");
	        this._container.append(markup.join(""));
	      }
	    };

	    return this.each(function() {
	      return new Monthly(this);
	    });
	  };
	})(jQuery);

	$(function() {
	  $("#selectionDebut").monthly({
	    years: [2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036],
	    topOffset: 28,
	    onMonthSelect: function(mi, m, y) {
	      mi = padToTwo(mi);
	      var debut = parseInt(mi) + 1;
	      $("#selectionDebut").val(m + " " + y);
	      $("#selectionDebutValue").val(debut + "/" + y);

	    }
	  });
	});
	$(function() {
	  $("#selectionFin").monthly({
	    years: [2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036],
	    topOffset: 28,
	    onMonthSelect: function(mi, m, y) {
	      mi = padToTwo(mi);
	      var fin = parseInt(mi) + 1;
	      $("#selectionFin").val(m + " " + y);
	      $("#selectionFinValue").val(fin + "/" + y);
	    }
	  });
	});


// resumé filtre

	$(".truncate-pub").each(function(){
		var content = $(this).text()
		if (content.length > 200) {
			var newContent = content.substr(0, 200)
			$(this).text(newContent)
			$(this).append('...')
		}
	})
	$(".truncate-actu").each(function(){
		var content = $(this).text()
		if (content.length > 200) {
			var newContent = content.substr(0, 200)
			$(this).text(newContent)
			$(this).append('...')
		}
	})

  $("#simulateur").click(function(){
    $("#document").trigger("click");
  });

})

