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

class PaqueteDeLadrillos {
	
	var ladrillos
	const pesoUnitario = 2

	
	method peso (cantidad){
		
		ladrillos = cantidad
		}
		
	method peso () {return ladrillos * pesoUnitario
	}
	
	method nivelPeligrosidad () {
		
		return 2
		
	}
}

object arenaAGranel {
	
	var peso 
	
	method peso (x) {
		peso = x}
		
	method peso () {return peso
		
	}
	
	method nivelPeligrosidad () {
		
		return 1
	}
}

object bateriaAntiaerea {
	
	var property estaConMisiles = false 
	
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