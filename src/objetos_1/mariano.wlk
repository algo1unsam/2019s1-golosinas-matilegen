import golosinas.*
object mariano {

	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var bolsaGolosinas = #{}
	var gustosBolsa	= #{}
	method comprar(golosina) {
		bolsaGolosinas.add(golosina)
		gustosBolsa.add(golosina.gusto())
	}

	method desechar(golosina) {
		bolsaGolosinas.remove(golosina)
			gustosBolsa.remove(golosina.gusto())
	}

	method golosinas() {
		/* cambiar por la implementacion correcta */
		return []
	}

	method bolsaGolosina() = bolsaGolosinas

	method probarGolosinas() {
		bolsaGolosinas.forEach({ golosinas => golosinas.mordisco()})
	}

	method hayGolosinaSinTACC() {
		return bolsaGolosinas.any({ golosina => golosina.libreGluten() })
	}

	method preciosCuidados() {
		return bolsaGolosinas.all({ golosinas => golosinas.precio() <= 10 })
	}

	method golosinaDeSabor(unSabor) {
		return bolsaGolosinas.find({ golosinas => golosinas.gusto() == unSabor })
	}

	method golosinasDeSabor(unSabor) {
		return bolsaGolosinas.filter({ golosinas => golosinas.gusto() == unSabor })
	}

	method sabores() {
		return bolsaGolosinas.map{ golosina => golosina.gusto() }.asSet()
	}

	method golosinaMasCara() {
		return bolsaGolosinas.map{ golosina => golosina.precio() }
	}

	method pesoGolosinas() {
		return bolsaGolosinas.sum{ golosina => golosina.peso() }
	}

	method golosinasFaltantes(golosinasDeseadas) {
		
		return golosinasDeseadas.difference(bolsaGolosinas)
		
	}
	method gustosFaltantes(gustosDeseados){

		return (gustosDeseados.difference(gustosBolsa))
	}

	method golosinasQueTiene(gusto) {
		var gustos=#{}
		gustos=self.comparo(gusto)
		bolsaGolosinas.remove(gustos)
		return gustos
	}
	method comparo(gusto){
		return gusto.filter({ golosina => bolsaGolosinas.contains(golosina) })
	}
}

