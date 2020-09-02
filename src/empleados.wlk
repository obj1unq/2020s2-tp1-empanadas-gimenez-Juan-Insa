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
	method gastar(cuanto){
		if (self.dinero() == 0){
			self.endeudar(cuanto)
		}
		else {self.descontar(cuanto)}
	}
	method endeudar(cuanto){
		deuda = deuda + cuanto
	}
	method descontar(cuanto){
		dinero = dinero - cuanto
	}
	method pagarDinero(){
		dinero = dinero + sueldo
		self.pagarDeuda()
	}
	method pagarDeuda(){
		deuda = 0.max(deuda - dinero)
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
		totalCobrado = totalCobrado + self.sueldo();
		self.resetVender() 
	}
	method pagarDinero(){
		
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
		empleado.pagarDinero()
	}
}