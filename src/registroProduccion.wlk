object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	
		method algunDiaSeProdujo(cantidad){
		return (produccionPorDia.any({cosa=>cosa == cantidad}))   
	}
	
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	
	method valoresDeProduccionPares(){
		return (produccionPorDia.filter({cosa=>cosa%2 == 0}))
	}
	
	method produccionEsAcotada(n1,n2){
		return (produccionPorDia.all({cosa=>cosa.between(n1,n2)}))
	}
	
	method produccionesSuperioresA(cuanto){
		return (produccionPorDia.filter({cosa => cosa > cuanto}))
	}
	
	method produccionesSumando(n){
		return (produccionPorDia.map({cosa=>cosa + n}))
	}
	
	method totalProducido(){
		return (produccionPorDia.sum())
	}
	
	method ultimoValorDeProduccion(){
		return(produccionPorDia.last())
	}
	
	method cantidadProduccionesMayorALaPrimera(){
		return (produccionPorDia.count({cosa=>cosa > produccionPorDia.first()}))
	}
}
