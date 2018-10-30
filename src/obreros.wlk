class Obrero {
	var blicencia = false
	var jornalesAdeudados = 0
	
	method estaDeLicencia(){
		return blicencia
	}
	
	method tomarLic(){
		blicencia = true
	}
	
	method volverLic(){
		blicencia = false
	}
	
	method trabajar(obra)
		
	
	
}


class Albanil inherits Obrero{
	var ladrillosNecesarios = 100
	var aporte = 3
	var metrosDeParedLevantados = 3

	
	override method trabajar(obra){
		obra.consumirLadrillos(ladrillosNecesarios)
		obra.aportarPared(metrosDeParedLevantados)
		jornalesAdeudados++	
	}
	
	method aportes(){
		aporte += aporte
		return aporte
	}
}

class Gasista inherits Obrero{
	var caniosNecesarios = 3
	var fosforosNecesarios = 20
	
	
	override method trabajar(obra){
		obra.consumirCanios(caniosNecesarios)
		obra.consumirFosforos(fosforosNecesarios)
		obra.aportarCanio(caniosNecesarios)
		
	}
}

class Plomero inherits Obrero{
	var canioNecesarios = 10
	var arandelaNecesarias = 30
	var aporte = 9
	var desperdicio = 0
	
	override method trabajar(obra){
		obra.consumirCanios(canioNecesarios)
		obra.consumirArandelas(arandelaNecesarias)
		obra.aportarCanio(aporte)
		desperdicio++
	}
}

class Electricista inherits Obrero{
	var cableNecesarios = 4
	var cintaNecesaria = 1
	var aporte = 4
	
	override method trabajar(obra){
		obra.consumirCables(cableNecesarios)
		obra.consumirCinta(cintaNecesaria)
		obra.aportarCable(aporte)
	}
}




