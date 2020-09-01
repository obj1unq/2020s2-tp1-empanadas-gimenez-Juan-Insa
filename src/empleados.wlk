//Escribir aqui los objetos
object galvan{
	var sueldo = 15000
	
	method sueldo(cantidad){
		sueldo = cantidad
	}
	method sueldo(){
		return sueldo
	}
}

object baigorria{
	var vender = 0
	
	method sueldo(){
		return vender * 15
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
	}
}