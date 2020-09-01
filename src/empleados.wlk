//Escribir aqui los objetos
object galvan{
	var sueldo = 15000
	
	method sueldo(){
		return sueldo
	}
}

object baigorria{
	var sueldo = vender * 15
	var vender = 0
	
	method sueldo(){
		return sueldo
	}
	method vender(cantidad){
		vender = vender + cantidad
	}
	method resetVender(){
		vender = 0
	}
}

object gimenez{
	var fondo = 300000
	
	method fondo(){
		return fondo
	}
	method pagarSueldo(empleado){
		fondo = fondo - empleado.sueldo()
		if (empleado == "baigorria"){
			empleado.resetVender()
		}
		
	}
}