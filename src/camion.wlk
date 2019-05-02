import cosas.*

object camion {
	const property cosas = []
	
	method cargar(unaCosa) {
		
		cosas.add(unaCosa)
		
		
	}
	
	method pesoTotal () {
		
		return cosas.sum({n => n.peso()}) + 1000
	}
	
	method excedienteDePeso () {
		
		return self.pesoTotal() > 2500
		
	}
	
	method objetosPeligrosos(nivel) {
		
		return cosas.filter({n=> n.nivelPeligrosidad() > nivel})
	}
}
