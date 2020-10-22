import elementos.*

class Barrio {
	var property elementos = []
	
	method agregarElemento(elemento){
		elementos.add(elemento)
	}
	
	method agregarElementos(lista){
		elementos.addAll(lista)
	}
	
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	
	method quitarElementos(lista){
		elementos.removeAll(lista)
	}
	
	method esCopado(){
		return elementos.count({e=>e.esBueno()}) > elementos.size() / 2
	}
}
