//Escribir aqui los objetos
object galvan{
	var sueldo = 15000
	
	method sueldo(cantidad){
		sueldo = cantidad
	}
	method sueldo(){
		return sueldo
	}
	method cobroTotal(){	
	}
}

object baigorria{
	var vender = 0
    var totalCobrado = 0
	
	method sueldo(){
		return vender * 15
	}
	method vender(cantidad){
		vender = vender + cantidad
	}
	method resetVender(){
		vender = 0
	}
	method totalCobrado(){
		return totalCobrado
	}
	method cobroTotal(){
		totalCobrado = totalCobrado + self.sueldo() 
	}
}
object gimenez{
	var fondo = 300000
	
	method fondo(){
		return fondo
	}
	method pagarSueldo(empleado){
		fondo = fondo - empleado.sueldo()
		empleado.cobroTotal()
		if(empleado == baigorria){
			empleado.resetVender()
		}
	}
}