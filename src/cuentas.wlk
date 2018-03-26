
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { saldo -= monto }
}

object cuentaDeJulian {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto * 0.8 } 
	
	method extraer(monto) { 
		if (5 + monto < saldo){
			saldo -= 5 + monto	
		}else{
			saldo -= monto
		}
	}
}
object casa{
	var saldo = cuentaDePepe.saldo() + cuentaDeJulian.saldo()
	var tieneComida = false
	var ultimaCosa
	
	
	method saldo() = saldo
		
	method comprar(cosa){
		self.gastar(cosa)
		self.registrar(cosa)
	}
	method registrar(cosa){
		ultimaCosa = cosa
		if (cosa.esComida()) tieneComida = true
	}
	method gastar(importe){
		saldo -= importe
	}
	method tieneComida() = tieneComida
	method vieneDeEquiparse(){
		return ultimaCosa.esElectrodomestico() && ultimaCosa.costo() > 5000
	}
	method puedeComprar(cosa) = saldo 
}

object plancha{
	method costo()= 1200
	method esComida() = false
	method esElectrodomestico () = true	
}
object heladera{
	method costo()= 20000
	method esComida() = false
	method esElectrodomestico () = true	
}
object tapaDeAsado{
	method costo()= 350
	method esComida() = true
	method esElectrodomestico () = false	
}
object cama{
	method costo()= 8000
	method esComida() = false
	method esElectrodomestico () = false	
}
object paqueteDeFideos{
	method costo()= 50
	method esComida() = true
	method esElectrodomestico () = false	
}










