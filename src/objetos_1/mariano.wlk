import golosinas.*
object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var bolsaGolosinas= #{}
	
	method comprar(golosina) { bolsaGolosinas.add(golosina) }
	method desechar(golosina) { bolsaGolosinas.remove(golosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	method bolsaGolosina()=bolsaGolosinas
	method probarGolosinas() { bolsaGolosinas.forEach({golosinas=>golosinas.mordisco()}) }
	method hayGolosinaSinTACC(){
		bolsaGolosinas.any(false,{golosina=>golosina.libreGluten()})
	}
}

