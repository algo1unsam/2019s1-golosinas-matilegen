import mariano.*
object juliana {

	var gustos = #{}

	method gustosDeseados(golosina) {
		gustos.add(golosina)
	}
	method quitarGolosina(){
		mariano.golosinasFaltantes(gustos)
	}
}

