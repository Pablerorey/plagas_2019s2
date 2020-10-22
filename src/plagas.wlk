class Pulgas{
	var property poblacion = 0
	
	method nivelDeDanio(){
		return poblacion * 2
	}
	
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	
	method efectoAtaque(){
		poblacion += poblacion * 0.10
	}
}

class Garrapatas inherits Pulgas{
	
	override method efectoAtaque(){
		poblacion += poblacion * 0.20
	}
}

class Cucarachas inherits Pulgas{
	var property pesoPromedio = 0
	
	override method nivelDeDanio(){
		return poblacion / 2
	}
	
	override method transmiteEnfermedades(){
		return super() and pesoPromedio >= 10
	}
	
	override method efectoAtaque(){
		super(); pesoPromedio += 2
	}
}

class Mosquitos inherits Pulgas{
	override method nivelDeDanio(){
		return poblacion
	}
	
	override method transmiteEnfermedades(){
		return super() and poblacion % 3 == 0 
	}
}



