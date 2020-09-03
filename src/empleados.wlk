//Escribir aqui los objetos
object galvan{
	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	
	method sueldo(cantidad){
		sueldo = cantidad
	}
	
	method sueldo(){
		return sueldo
	}
	
	method dinero(){
		return dinero
	}
	
	method deuda(){
		return deuda
	}
	
	method cobroTotal(){
        dinero = 0.max(sueldo - deuda)
        deuda = 0.max(deuda - dinero)
    }
    
    method gastar(monto){
    	deuda = 0.max(monto - dinero)
    	dinero = 0.max(dinero - monto)
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
	
	method totalCobrado(){
		return totalCobrado
	}
	
	method cobroTotal(){
		totalCobrado = totalCobrado + self.sueldo();
		vender = 0
	}
	
	method pagar(){}

}
object gimenez{
	var fondo = 300000
	
	method fondo(){
		return fondo
	}
	
	method pagarSueldo(empleado){
		fondo = fondo - empleado.sueldo()
		empleado.cobroTotal()
	}
}