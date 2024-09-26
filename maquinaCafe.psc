Funcion precio <- definirPrecio ( opción, tamaño )
	segun(opción)
		caso 1:
			precioBase <- 1
		caso 2:
			precioBase <- 1.50
		caso 3:
			precioBase <- 1.30
		caso 4:
			precioBase <- 2
	FinSegun
	
	// precio según el tamaño
	segun(tamaño)
		caso 1:  // pequeño
			precio <- precioBase
		caso 2:  // mediano
			precio <- precioBase + 0.30
		caso 3:  // grande
			precio <- precioBase + 0.60
	FinSegun
	
Fin Funcion

Funcion cobrar(cash, precio)
	mientras cash < precio
		Escribir("Dinero insuficiente. Introduzca más dinero:")
		Leer aumentoCash
		cash <- cash + aumentoCash
		
	FinMientras
	
	cambio <- cash - precio
	Si cambio = 0 Entonces
		Escribir("Gracias! Has pagado correctamente.")
	SiNo
		Escribir("Gracias! Tu cambio es: ")
		Escribir(cambio)
	FinSi
	
FinFuncion

Funcion opcionLeche
	Escribir("¿Quieres añadir leche? [1] Poca leche [2] Normal [3] No añadir leche")
	Leer optLeche
	
	segun(optLeche)
		caso 1:
			Escribir ("Añadiendo poca leche.")
		caso 2:
			Escribir("Añadiendo leche normal.")
		caso 3:
			Escribir("No se añadirá leche.")
		De otro modo:
			Escribir("Opción no válida.")
	FinSegun
FinFuncion

Funcion opcionAzucar
	Escribir("¿Quieres añadir azúcar? Selecciona [1] Azúcar común [2] Sacarina [3] No añadir")
	Leer optAzucar
	
	Segun(optAzucar)
		Caso 1:
			Escribir ("Añadiendo azúcar común.")
		Caso 2:
			Escribir("Añadiendo sacarina.")
		Caso 3:
			Escribir("No se añadirá azúcar.")
		De otro modo:
			Escribir("Opción no válida.")
	FinSegun
FinFuncion

Algoritmo maquinaCafe
	Repetir 
		Escribir (" [   MÁQUINA DE CAFÉ   ]!")
		Escribir ("Selecciona tu bebida:")
		Escribir ("[1] Café solo - 1 euro")
		Escribir ("[2] Café con leche - 1,50 euros")
		Escribir ("[3] Cortado - 1,30 euros")
		Escribir ("[4] Cappuccino - 2 euros")
		Escribir ("[5] Salir")
		Leer opcion
		
		Si opcion >= 1 Y opcion <= 4 Entonces
			Escribir ("Selecciona el tamaño: [1] Pequeño [2] Mediano [3] Grande")
			Leer tamaño
			precio <- definirPrecio(opcion, tamaño)
			
			Escribir("El total a pagar es: ")
			Escribir (precio)
			Escribir("Introduzca el dinero, por favor")
			Leer cash
			
			cobrar(cash, precio)
			opcionLeche()
			opcionAzucar()
		FinSi
		
		Si opcion = 5 Entonces
			Escribir ("Gracias por usar la máquina.")
		FinSi
	Hasta Que opcion = 5
	
FinAlgoritmo



