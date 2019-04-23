import mariano.*
import golosinas.*
object juliana {

	var gustos = #{}
	var bolsaGolosinas=#{}
	var golosinasQueFaltan=#{}

	method gustosDeseados(golosina) {
		gustos.add(golosina)
	}
	method golosinasMariano(){
		bolsaGolosinas.add(mariano.golosinasQueTiene(gustos))
		
	}
	method golosinaQueFaltan(){
		
		golosinasQueFaltan.add(mariano.golosinasFaltantes(gustos))
	}
	method golosinas(){
		return golosinasQueFaltan
	}
	method bolsaGolosinas()=bolsaGolosinas
}

