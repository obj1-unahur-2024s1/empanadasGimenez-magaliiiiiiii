/** First Wollok example */
object galvan {
	var sueldo = 150000
	var deuda=0
	var sueldoAcumulado=0
	
	// msjs polimorficos
	method sueldo() { return sueldo}
	method sueldo(unSueldo)={sueldo=unSueldo}
	
	method cobrarSueldo(){}
	method gastar(unValor){ deuda=(deuda+ unValor).abs }
	
	method totalDeuda(){deuda}
	method sueldoAcumulado(){return 0.max(sueldo-deuda)}
	
	method totalDinero(){return sueldoAcumulado-deuda}
	
}


object Baigorria{
	var sueldoAcumulado=0
	var cantDeEmpanada
	var precioPorEmpanada=150
	
	// msjs polimorficos
	method sueldo()= precioPorEmpanada* cantDeEmpanada
	method cobrarSueldo(){sueldoAcumulado=sueldoAcumulado+self.sueldo()}
	
	method sueldoAcumulado(){
		return self.sueldo()
	}
	
	
}