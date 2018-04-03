
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { 
		if	(saldo < monto){
			self.error('No hay suficiente dinero')
		}else{
			saldo -= monto	
		}
		
	}
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
	var gastos = {compras.sum({e => e.costo()})}
	//var tieneComida = false
	var property compras = []
	
	//method saldo() = saldo.apply()
	
	method gastos() = gastos.apply()
	
	method ultimaCosa() = compras.last()
			
	method comprar(cosa){
		compras.add(cosa)
	}
	//method gastar(importe){		saldo -= importe	}
	
	method tieneComida() = compras.any({e => e.esComida()})
	
	method vieneDeEquiparse(){
		return if (compras == []) self.ultimaCosa().esElectrodomestico() && self.ultimaCosa().costo() > 5000 else false
	}
	//method puedeComprar(cosa) = saldo 
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


object transferencia{
	var desde = cuentaDeJulian
	var hasta = cuentaDePepe
	var monto = 10
	method ejecutar(){
		
		hasta.depositar(monto)
		try{
			desde.extraer(monto)
		}catch error{
			hasta.extraer(monto)
			throw error
		}
	}
}

// cuentas.foreach({cuentas => c})





