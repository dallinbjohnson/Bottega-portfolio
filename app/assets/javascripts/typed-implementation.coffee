ready = ->
	Typed.new '.element',
		strings: [
			"The computer programmer is a creator of universes for which he alone is responsible. Universes of virtually unlimited complexity can be created in the form of computer programs. - Joseph Weizenbaum",
			"You might not think that programmers are artists, but programming is an extremely creative profession. It's logic-based creativity. - John Romero",
			"Many people tend to look at programming styles and languages like religions: if you belong to one, you cannot belong to others. But this analogy is another fallacy. - Niklaus Wirth",
			"Everybody should learn how to program a computer because it teaches you how to think. – Steve Jobs"
		]
		typeSpeed: 30
		backDelay: 6000
		loop: true
	return

$(document).ready ready
$(document).on 'turbolinks:load', ready
