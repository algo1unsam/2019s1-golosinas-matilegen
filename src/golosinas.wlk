object bombon {
	var peso = 15
	
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
	
	method precio() {
		return 12
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		peso = peso * 0.8 
	}	
	method gusto() {
		return "chocolate"
	}
	
	method libreGluten() {
		return false
	}	
}
object caramelo {
	var peso = 5
	
	method precio() {
		return 1
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		peso -= 1 
	}	
	method gusto() {
		return "frutilla"
	}
	
	method libreGluten() {
		return true
	}
}

object chupetin {
	var peso = 7
	
	method precio() {
		return 2
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		if(peso < 2) peso = peso * 0.9 
	}	
	method gusto() {
		return "naranja"
	}
	
	method libreGluten() {
		return true
	}	
}

object oblea {
	var peso = 250
	
	method precio() {
		return 5
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		peso = peso * if (peso > 70) 0.5 else 0.75 
	}	
	method gusto() {
		return "vainilla"
	}
	
	method libreGluten() {
		return false
	}
}

object chocolatin {
	var comido = 0
	var pesoInicial
	
	method pesoInicial(unPeso) {
		pesoInicial = unPeso
	}
	
	method precio() {
		return pesoInicial * 0.50
	}
	
	method peso() {
		return (pesoInicial - comido).max(0)
	}
	
	method mordisco() {
		comido += 2 
	}	
	method gusto() {
		return "chocolate"
	}
	
	method libreGluten() {
		return false
	}
}

object golosinaBaniada {
	var golosina
	var pesoBanio = 4
	
	method golosina(unaGolosina) { 
		golosina = unaGolosina
	}
	
	method precio() {
		return golosina.precio() + 2;
	}
	
	method peso() {
		return golosina.peso() + pesoBanio;
	}
	
	method mordisco() {
		golosina.mordisco()
		pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() {
		return golosina.gusto()
	}
	
	method libreGluten() {
		return golosina.libreGluten()
	}	
}

object tutifrutti {
	var libreDeGluten
	var peso = 10
	var gustos= ["frutilla", "naranja","chocolate"]
	var mordiscos = 0
	
	method libreGluten(valor) {
		libreDeGluten = valor
	}
	method precio() {
		return if(self.libreGluten()) 7 else 10;
	}
	
	method peso() {
		return peso;
	}
	
	method mordisco() {
		mordiscos = mordiscos + 1;
	}	
	method gusto() {
		return gustos.get(gustos.size() % (mordiscos + 1))
	}
	
	method libreGluten() {
		return libreDeGluten
	}	
}

