import mariano.*
object juliana {

	var gustos = #{}
	var bolsaGolosinas=#{}

	method gustosDeseados(golosina) {
		gustos.add(golosina)
	}
	method golosinasMariano(){
		bolsaGolosinas=mariano.golosinasQueTiene(gustos)
	}
	method golosinaQueFaltan(){
		return mariano.golosinasFaltantes(bolsaGolosinas)
	}
}

