class Hogar {
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno(){
		return nivelDeMugre <= confort / 2
	}
	
	method ataqueDePlaga(plaga){
		plaga.efectoAtaque()
		nivelDeMugre += plaga.nivelDeDanio()
	}
}

class Huerta{
	var property capacidadDeProduccion = 0
	var property nivel = 0
	
	method esBueno(){
		return capacidadDeProduccion > nivel
	}
	
	method ataqueDePlaga(plaga){
		plaga.efectoAtaque()
		if (plaga.transmiteEnfermedades()){
			capacidadDeProduccion -= 10
		}
		capacidadDeProduccion -= plaga.nivelDeDanio() * 0.10
		
	}
}

class Mascota{
	var property nivelDeSalud = 0
	
	method esBueno(){
		return nivelDeSalud > 250
	}
	
	method ataqueDePlaga(plaga){
		plaga.efectoAtaque()
		if (plaga.transmiteEnfermedades()){
			nivelDeSalud -= plaga.nivelDeDanio()
		}
}
}