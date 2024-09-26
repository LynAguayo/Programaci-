Funcion precio <- definirPrecio ( opci�n, tama�o )
	segun(opci�n)
		caso 1:
			precioBase <- 1
		caso 2:
			precioBase <- 1.50
		caso 3:
			precioBase <- 1.30
		caso 4:
			precioBase <- 2
	FinSegun
	
	// precio seg�n el tama�o
	segun(tama�o)
		caso 1:  // peque�o
			precio <- precioBase
		caso 2:  // mediano
			precio <- precioBase + 0.30
		caso 3:  // grande
			precio <- precioBase + 0.60
	FinSegun
	
Fin Funcion

Funcion cobrar(cash, precio)
	mientras cash < precio
		Escribir("Dinero insuficiente. Introduzca m�s dinero:")
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
	Escribir("�Quieres a�adir leche? [1] Poca leche [2] Normal [3] No a�adir leche")
	Leer optLeche
	
	segun(optLeche)
		caso 1:
			Escribir ("A�adiendo poca leche.")
		caso 2:
			Escribir("A�adiendo leche normal.")
		caso 3:
			Escribir("No se a�adir� leche.")
		De otro modo:
			Escribir("Opci�n no v�lida.")
	FinSegun
FinFuncion

Funcion opcionAzucar
	Escribir("�Quieres a�adir az�car? Selecciona [1] Az�car com�n [2] Sacarina [3] No a�adir")
	Leer optAzucar
	
	Segun(optAzucar)
		Caso 1:
			Escribir ("A�adiendo az�car com�n.")
		Caso 2:
			Escribir("A�adiendo sacarina.")
		Caso 3:
			Escribir("No se a�adir� az�car.")
		De otro modo:
			Escribir("Opci�n no v�lida.")
	FinSegun
FinFuncion

Algoritmo maquinaCafe
	Repetir 
		Escribir (" [   M�QUINA DE CAF�   ]!")
		Escribir ("Selecciona tu bebida:")
		Escribir ("[1] Caf� solo - 1 euro")
		Escribir ("[2] Caf� con leche - 1,50 euros")
		Escribir ("[3] Cortado - 1,30 euros")
		Escribir ("[4] Cappuccino - 2 euros")
		Escribir ("[5] Salir")
		Leer opcion
		
		Si opcion >= 1 Y opcion <= 4 Entonces
			Escribir ("Selecciona el tama�o: [1] Peque�o [2] Mediano [3] Grande")
			Leer tama�o
			precio <- definirPrecio(opcion, tama�o)
			
			Escribir("El total a pagar es: ")
			Escribir (precio)
			Escribir("Introduzca el dinero, por favor")
			Leer cash
			
			cobrar(cash, precio)
			opcionLeche()
			opcionAzucar()
		FinSi
		
		Si opcion = 5 Entonces
			Escribir ("Gracias por usar la m�quina.")
		FinSi
	Hasta Que opcion = 5
	
FinAlgoritmo



