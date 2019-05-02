object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos {
	
	var ladrillos
	
	method peso (cantidad){
		
		ladrillos = cantidad
		
		return cantidad * 2
	}
	
	method nivelPeligrosidad () {
		
		return 2
		
	}
}

object arenaAGranel {
	
	var peso 
	
	method peso (x) {
		peso = x
		return peso
		
	}
	
	method nivelPeligrosidad () {
		
		return 1
	}
}

object bateriaAntiaerea {
	
	var estaConMisiles 
	
	method cargarMisiles() {
		
		estaConMisiles = true
	}
	
	method descargarMisiles() {
		
		estaConMisiles = false
	}
	
	method peso () {
		
		 if (estaConMisiles) {
		 	
		 	return 300
		 }
		
		else {
			return 200
		}
	}
	
	method nivelPeligrosidad () {
		
		if (estaConMisiles){
		 	
		 	return 100
		 }
		
		else {
			return 0
		}
		
	}
}