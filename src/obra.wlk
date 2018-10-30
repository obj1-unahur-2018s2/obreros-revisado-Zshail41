import obreros.*

class Obra{
	var ladrillos = 0
	var canios = 0
	var cable = 0
	var cinta = 0
	var fosforos = 0
	var arandelas = 0
	var plantilla = []
	
	var paredLevantada = 0
	var canioConstruido = 0
	var cableConstruido = 0
	
	method ladrillos(){
		return ladrillos
	}
	
	method canios(){
		return canios
	}
	
	method cable(){
		return cable
	}
	
	method cinta(){
		return cinta
	}
	
	method fosforos(){
		return fosforos
	}
	
	method arandelas(){
		return arandelas
	}
	
	method setLadrillos(cant){
		ladrillos = cant
	}
	
	method setCanio(cant){
		canios = cant
	}
	
	method setCable(cant){
		cable = cant
	}
	
	method setCinta(cant){
		cinta = cant
	}
	
	method setFosforos(cant){
		fosforos = cant
	}
	
	method setArandelas(cant){
		arandelas = cant
	}
	
	method agregarObrero(obrero){
		plantilla.add(obrero)
	}
	
	method quitarObrero(obrero){
		plantilla.remove(obrero)
	}
	
	method obrerosDisponibles(){
		return plantilla.filter({c => !c.estaDeLicencia()})
	}
	
	method estaEnPlanilla(obrero){
		return plantilla.contains(obrero)
	}
	
	method consumirLadrillos(cant){
		ladrillos -= cant
	}
	
	method consumirCanios(cant){
		canios -= cant
	}
	
	method consumirCables(cant){
		cable -= cant
	}
	
	method consumirFosforos(cant){
		fosforos -= cant
	}
	
	method consumirArandelas(cant){
		arandelas -= cant
	}
	
	method consumirCinta(cant){
		cinta -= cant
	}
	
	method aportarPared(aporte){
		paredLevantada += aporte
	}
	
	method aportarCanio(aporte){
		canioConstruido += aporte
	}
	
	method aportarCable(aporte){
		cableConstruido += aporte
	}
	
	method iniciarJornada(){
		if(self.obrerosDisponibles().isEmpty()){
			self.error("No hay obreros disponibles para trabajar")
			}
			plantilla.forEach({
				obrero =>if(!obrero.estaDeLicencia()){
				obrero.trabajar(self)}})
				
				}
				}
	
	
	
	




