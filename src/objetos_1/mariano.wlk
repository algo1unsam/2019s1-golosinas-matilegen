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
		bolsaGolosinas.any({golosina=>lebreDeGluten.compruebo(golosina)})
	}
	method preciosCuidados() { bolsaGolosinas.forEach({golosinas=>golosinas.precio()<10 }
}
object lebreDeGluten{
	method compruebo(golosina){
		if(golosina.libreGluten()){
			console.println(golosina)
		}
	}
}
