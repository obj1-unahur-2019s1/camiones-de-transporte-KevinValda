import cosas.*

class Camion {
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
	
	method objetosMasPeligrososQue(cosa) {
		
		return self.objetosPeligrosos(cosa.nivelPeligrosidad())
		
	}
	
	method puedeCircularEnRuta (nivelMaxPeligrosidad) {
		
		return self.objetosPeligrosos(nivelMaxPeligrosidad).isEmpity()
		
	}
	
	
	
}
