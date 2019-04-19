object bombon {

	var peso = 15

	method nombre() = self

	method precio() {
		return 5
	}

	method peso() {
		return peso
	}

	method mordisco() {
		peso = peso * 0.8 - 1
	}

	method gusto() {
		return "frutilla"
	}

	method libreGluten() {
		return true
	}

}

object alfajor {

	var peso = 300

	method nombre() = self

	method precio() {
		return 12
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "chocolate"
	}

	method libreGluten() {
		return false
	}

	method mordisco() {
		peso = peso * 0.8
	}

}

object caramelo {

	var peso = 5

	method nombre() = self

	method precio() {
		return 1
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "frutilla"
	}

	method libreGluten() {
		return true
	}

	method mordisco() {
		peso = peso - 1
	}

}

object chupetin {

	var peso = 7

	method nombre() = self

	method precio() {
		return 2
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "naranja"
	}

	method libreGluten() {
		return true
	}

	method mordisco() {
		if (peso >= 2) {
			peso = peso * 0.9
		}
	}

}

object oblea {

	var peso = 250

	method nombre() = self

	method precio() {
		return 5
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "vainilla"
	}

	method libreGluten() {
		return false
	}

	method mordisco() {
		if (peso > (70)) {
			peso = peso - (peso / 2)
		} else {
			peso = peso - (peso * 0.25)
		}
	}

}

object chocolatin {

	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual

	/* al principio, el peso actual coincide con el inicial */
	method nombre() = self

	method pesoInicial(cuanto) {
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method pesoInicial()=pesoInicial
	method pesoActual()=pesoActual
	method precio() {
		return pesoInicial * 0.5
	}

	method libreGluten() {
		return false
	}

	method gusto() {
		return "chocolate"
	}


	method mordisco() {
		pesoActual = pesoActual - 2
	}

}

object golosinaBaniada {

	var golosinaInterior
	var pesoBanio = 4

	method nombre() = self

	method baniaA(unaGolosina) {
		golosinaInterior = unaGolosina
	}

	method precio() {
		return golosinaInterior.precio() + 2
	}

	method peso() {
		return golosinaInterior.peso() + pesoBanio
	}

	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) {
			pesoBanio -= 2
		}
	// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}

	method gusto() {
		return golosinaInterior.gusto()
	}

	method libreGluten() {
		return golosinaInterior.libreGluten()
	}

}

object tuttifrutti {

	var peso = 5
	var gusto = frutilla
	var property libreGluten = false

	method nombre() = self

	method peso() = peso

	method precio() = if (libreGluten) 7 else 10

	method gusto() = gusto

	method mordisco() {
		gusto = ruleta.gira()
	}

	method libreGluten() {
		return libreGluten
	}

}

object ruleta {

	var gusto = frutilla

	method gira() {
		var gus
		gus= gusto
		gusto = gusto.siguiente()
		return gus
	}

}

object frutilla {

	method siguiente() = naranja

}

object naranja {

	method siguiente() = chocolate

}

object chocolate {

	method siguiente() = frutilla

}

