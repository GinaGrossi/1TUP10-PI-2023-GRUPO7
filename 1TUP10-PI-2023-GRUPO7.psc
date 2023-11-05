Algoritmo sistema_ventas_pasajes_aereos
	
	Definir opcionesMenu, opcionesTramos, tramo Como Entero
	Definir asientos1, asientos2, asientos3, asientos4, dimPasajero Como Entero
	Definir stock, ordenamiento Como Entero
	Definir listado Como Entero
	
	asientos1 = 120
	asientos2 = 120
	asientos3 = 80
	asientos4 = 80
	dimPasajero = 7 // nombre, dni, equipaje, nropfrecuente, telefono, costo
	Definir tramo1 Como Caracter//contiene stock pasajes tramo1 + datos del cliente
	Definir tramo2 Como Caracter
	Definir tramo3 Como Caracter
	Definir tramo4 Como Caracter
	Dimension tramo1[asientos1, dimPasajero]
	Dimension tramo2[asientos2, dimPasajero]
	Dimension tramo3[asientos3, dimPasajero]
	Dimension tramo4[asientos4, dimPasajero]
	
	Definir asientoBuscado Como Caracter
	Definir pasajeroBuscado Como Caracter
	Definir encontrado Como Logico
	Definir valido Como Logico
	
	Mostrar "Bienvenido al sistema de venta de pasajes aéreos"
	Mostrar "Menú de opciones:"
	
	Repetir
		// validar que ingrese cantidad de opciones disponibles
		Repetir
			mostrarOpcionesMenu()
			Leer opcionesMenu
			valido = validar(opcionesMenu, 6) 
		Hasta Que valido
		
		Segun opcionesMenu Hacer
			1:
				Repetir
					Mostrar "Ingrese la ruta buscada: "
					mostrarOpcionesRutas() 
					Leer tramo
					valido = validar(tramo, 4) 
					nombreRutas = nombres(tramo) 
				Hasta Que valido
				
				Segun tramo // variable que almacena 1 para bs as - barilo 2 bsas salta 3 ros - bsas y 4 mdq - mza
					1: 
						cargardatos(tramo1, asientos1, dimPasajero) 
						costoPasaje = calcularCosto(tramo1, asientos1, dimPasajero, tramo) 
						mostrarDatos(nombreRutas, tramo1, asientos1, costoPasaje) 
						xx(asientos1) // descuenta 1 asiento al total luego de la compra del pasaje
					2:
						cargardatos(tramo2, asientos2, dimPasajero)
						costoPasaje = calcularCosto(tramo2, asientos2, dimPasajero, tramo)
						mostrarDatos(nombreRutas, tramo2, asientos2, costoPasaje)
						xx(asientos2)
					3:
						cargardatos(tramo3, asientos3, dimPasajero)
						costoPasaje = calcularCosto(tramo3, asientos3, dimPasajero, tramo)
						mostrarDatos(nombreRutas, tramo3, asientos3, costoPasaje)
						xx(asientos3)
					4:
						cargardatos(tramo4, asientos4, dimPasajero)
						costoPasaje = calcularCosto(tramo4, asientos4, dimPasajero, tramo)
						mostrarDatos(nombreRutas, tramo4, asientos4, costoPasaje)
						xx(asientos4)
				FinSegun
				
				Mostrar "desea realizar alguna otra operacion?"
				Mostrar " "
				
			2:
				Mostrar " "
				Mostrar "Ingrese la ruta aerea del pasaje que desea consultar "
				
				Repetir
					mostrarOpcionesRutas()
					Leer tramo
					valido = validar(tramo, 4)
				Hasta Que valido
				
				stock = calcularStock(tramo) // devuelve un numero fijo de asientos para cada tramo seleccionado
					
				//Se puede buscar un pasajero por número de asiento
				Segun tramo Hacer
					1://buscar pasaje en el arreglo tramo1[asientos1, dimPasajero]
						Mostrar "ingrese su numero de asiento "
						Leer asientoBuscado
						encontrado = Falso
						
						Para i=1 Hasta stock Hacer
							si asientoBuscado = tramo1[i,dimPasajero] Entonces
								Mostrar "pasaje encontrado!" 
								encontrado = Verdadero
							FinSi
						FinPara
						
						si encontrado
							Mostrar "Ruta: " nombreRutas
							Mostrar "Nombre y apellido: " tramo1[asientoBuscado, 1]
							Mostrar "DNI: " tramo1[asientoBuscado, 2]
						SiNo
							Mostrar "No se encontro el asiento, verifique los datos ingresados"
						FinSi
						
					2:
						Mostrar "ingrese su numero de asiento "
						Leer asientoBuscado
						encontrado = Falso
						
						Para i=1 Hasta stock Hacer
							si asientoBuscado = tramo2[i,dimPasajero] Entonces
								Mostrar "pasaje encontrado!" 
								encontrado = Verdadero
							SiNo
								Mostrar "No se encontro el asiento, verifique los datos ingresados"
								encontrado = Falso
							FinSi
						FinPara
						
						si encontrado
							Mostrar "Ruta: " nombreRutas
							Mostrar "Nombre y apellido: " tramo2[asientoBuscado, 1]
							Mostrar "DNI: " tramo2[asientoBuscado, 2]
						SiNo
							Mostrar "No se encontro el asiento, verifique los datos ingresados"
						FinSi
					3:
						Mostrar "ingrese su numero de asiento "
						Leer asientoBuscado
						encontrado = Falso
						Para i=1 Hasta stock Hacer
							si asientoBuscado = tramo3[i,dimPasajero] Entonces
								Mostrar "pasaje encontrado!" 
								encontrado = Verdadero
							FinSi	
						FinPara
						
						si encontrado
							Mostrar "Ruta: " nombreRutas
							Mostrar "Nombre y apellido: " tramo3[asientoBuscado, 1]
							Mostrar "DNI: " tramo3[asientoBuscado, 2]
						SiNo
							Mostrar "No se encontro el asiento, verifique los datos ingresados"
						FinSi
					4:
						Mostrar "ingrese su numero de asiento "
						Leer asientoBuscado
						encontrado = Falso
						Para i=1 Hasta stock Hacer
							si tasientoBuscado = tramo4[i,dimPasajero] Entonces
								Mostrar "pasaje encontrado!" 
								encontrado = Verdadero
							FinSi
						FinPara
						
						si encontrado
							Mostrar "Ruta: " nombreRutas
							Mostrar "Nombre y apellido: " tramo4[asientoBuscado, 1]
							Mostrar "DNI: " tramo4[asientoBuscado, 2]
						SiNo
							Mostrar "No se encontro el asiento, verifique los datos ingresados"
						FinSi
						
				FinSegun
				
			3:
				Mostrar "Ingrese la ruta aerea pasajero del que desea consultar "
				
				Repetir
					mostrarOpcionesRutas()
					Leer tramo
					valido = validar(tramo, 4)
				Hasta Que valido
				
				stock = calcularStock(tramo)
				
				Segun tramo Hacer
					1:
							Mostrar "Ingrese nombre del pasajero que desea buscar "
							Leer pasajeroBuscado
							
							Para i=1 Hasta stock Hacer
								Si tramo1[i,1] == pasajeroBuscado Entonces
									Mostrar "pasajero encontrado!" 
									h = i
									encontrado = Verdadero
								FinSi
							FinPara
							
							Si encontrado
								Mostrar "Ruta: " nombreRutas
								Mostrar "Nombre y apellido: " tramo1[h, 1]
								Mostrar "DNI: " tramo1[h, 2]
							FinSi
						2:
							
							Mostrar "ingrese nombre del pasajero que desea buscar "
							Leer pasajeroBuscado
							
							Para i=1 Hasta stock Hacer
								Si tramo2[i,1] == pasajeroBuscado Entonces
									Mostrar "pasajero encontrado!" 
									h = i
									encontrado = Verdadero
								FinSi
							FinPara
							
							Si encontrado
								Mostrar "Ruta: " nombreRutas
								Mostrar "Nombre y apellido: " tramo2[h, 1]
								Mostrar "DNI: " tramo2[h, 2]
							FinSi
						3:
							
							Mostrar "ingrese nombre del pasajero que desea buscar "
							Leer pasajeroBuscado
							
							Para i=1 Hasta stock Hacer
								Si tramo3[i,1] == pasajeroBuscado Entonces
									Mostrar "pasajero encontrado!" 
									h = i
									encontrado = Verdadero
								FinSi
							FinPara
							
							Si encontrado
								Mostrar "Ruta: " nombreRutas
								Mostrar "Nombre y apellido: " tramo3[h, 1]
								Mostrar "DNI: " tramo3[h, 2]
							FinSi
						4:
							
							Mostrar "ingrese nombre del pasajero que desea buscar "
							Leer pasajeroBuscado
							PasajeroBuscado = Minusculas(PasajeroBuscado)
							
							Para i=1 Hasta stock Hacer
								Si tramo4[i,1] == pasajeroBuscado Entonces
									Mostrar "pasajero encontrado!" 
									h = i
									encontrado = Verdadero
								FinSi
							FinPara
							
							Si encontrado
								Mostrar "Ruta: " nombreRutas
								Mostrar "Nombre y apellido: " tramo4[h, 1]
								Mostrar "DNI: " tramo4[h, 2]
							FinSi
				FinSegun
		
			4:	
				Mostrar ""
				Mostrar "Que ruta desea ordenar?"
				
				Repetir
					mostrarOpcionesRutas()
					Leer tramo
					valido = validar(tramo, 4)
				Hasta Que valido
				
				Repetir
					Mostrar " "
					Mostrar "ingrese 1 para ordenar de forma ascendente o 2 para ordenar de forma descendente"
					Leer ordenamiento
					valido = validar(ordenamiento, 2)
				Hasta Que valido
				
				Si ordenamiento = 1 Entonces
					
					Si tramo = 1 Entonces
						stock = calcularStock(tramo)
						ordenarASC(tramo1, stock, dimPasajero)
					FinSi
					
					Si tramo = 2 Entonces
						stock = calcularStock(tramo)
						ordenarASC(tramo2, stock, dimPasajero)
					FinSi
					
					Si tramo = 3 Entonces
						stock = calcularStock(tramo)
						ordenarASC(tramo3, stock, dimPasajero)
					FinSi
					
					Si tramo = 4 Entonces
						stock = calcularStock(tramo)
						ordenarASC(tramo4, stock, dimPasajero)
					FinSi
					
				SiNo
					Si tramo = 1 Entonces
						stock = calcularStock(tramo)
						ordenarDESC(tramo1, stock, dimPasajero)
					FinSi
					
					Si tramo = 2 Entonces
						stock = calcularStock(tramo)
						ordenarDESC(tramo2, stock, dimPasajero)
					FinSi
					
					Si tramo = 3 Entonces
						stock = calcularStock(tramo)
						ordenarDESC(tramo3, stock, dimPasajero)
					FinSi
					
					Si tramo = 4 Entonces
						stock = calcularStock(tramo)
						ordenarDESC(tramo4, stock, dimPasajero)
					FinSi
				FinSi
				
			5:
				Repetir
					Mostrar " "
					Mostrar "ingrese 1 para consultar la cantidad de pasajes vendido por ruta aérea o 2 para consultar el porcentaje de ventas por ruta aérea"
					Leer listado
					valido = validar(listado, 2)
				Hasta Que valido
				
				si listado = 1 Entonces
					nombreRutas = nombres(1)
					stock = calcularStock(1)
					mostrarA(stock, asientos1, nombreRutas)
					
					nombreRutas = nombres(2)
					stock = calcularStock(2)
					mostrarA(stock, asientos2,nombreRutas)
					
					nombreRutas = nombres(3)
					stock = calcularStock(3)
					mostrarA(stock, asientos3,nombreRutas)
					
					nombreRutas = nombres(4)
					stock = calcularStock(4)
					mostrarA(stock, asientos4,nombreRutas)
				SiNo
					nombreRutas = nombres(1)
					stock = calcularStock(1)
					mostrarB(stock, asientos1, nombreRutas)
					
					nombreRutas = nombres(2)
					stock = calcularStock(2)
					mostrarB(stock, asientos2, nombreRutas)
					
					nombreRutas = nombres(3)
					stock = calcularStock(3)
					mostrarB(stock, asientos3, nombreRutas)
					
					nombreRutas = nombres(4)
					stock = calcularStock(4)
					mostrarB(stock, asientos4, nombreRutas)
				FinSi
				
			6:
				Mostrar "Muchas gracias por utilizar nuestros servios"
				
			De Otro Modo:
				Mostrar "opcion no valida, ingrese una opcion valida'
				
		FinSegun
		
	Hasta Que opcionesMenu = 6
FinAlgoritmo

SubProceso xx(asientos Por Referencia)
	asientos = asientos - 1
FinSubProceso

SubProceso mostrarOpcionesMenu
	Mostrar "1. Venta pasaje"
	Mostrar "2. Buscar pasaje vendido"
	Mostrar "3. Buscar pasajero"
	Mostrar "4. Ordenar y mostrar lista pasajeros"
	Mostrar "5. Listado/s"
	Mostrar "6. Salir"
FinSubProceso

SubProceso mostrarOpcionesRutas
	Mostrar "1. Buenos Aires - Bariloche"
	Mostrar "2. Bueno Aires - Salta"
	Mostrar "3. Rosario - Buenos Aires"
	Mostrar "4. Mar Del Plata - Mendoza"
FinSubProceso

Funcion valido = validar(variable, cantidad)
	Definir valido Como Logico
	si variable > 0 y variable <= cantidad 
		valido = Verdadero
	SiNo
		valido = Falso
		Mostrar "opcion no valida, ingrese nuevamente una opcion entre las disponibles" 
	FinSi
FinFuncion

Funcion nombreRutas = nombres(ruta)
	Segun ruta
		1: 
			nombreRutas = "Buenos Aires - Bariloche"
		2: 
			nombreRutas = "Bueno Aires - Salta"
		3: 
			nombreRutas =  "Rosario - Buenos Aires"
		4: 
			nombreRutas =  "Mar Del Plata - Mendoza"
	FinSegun
FinFuncion

Funcion costoPasaje = calcularCosto(tramo1, tope, dimPasajero, ruta)
	Definir costoPasaje Como Real
	costoPasaje = 0
	Segun ruta Hacer
		1: // Buenos Aires - Bariloche
			si tope >= 100
				costoPasaje = 150000 //$150.000 para los primeros 20 pasajes
			SiNo
				si tope < 100 y tope >= 60 Entonces //luego se incrementa un 10% hasta los 60,
					costoPasaje = 150000 * 1.1 
				SiNo 
					costoPasaje = 180000 //luego termina saliendo $180.000.
				FinSi
			FinSi
			
		2: //Bueno Aires - Salta
			si tope >= 100
				costoPasaje = 120000 //$120.000 para los primeros 20 pasajes
			SiNo
				si ope < 100 y tope >= 60 Entonces //luego se incrementa un 10% hasta los 60,
					costoPasaje = 120000 * 1.1 
				SiNo
					costoPasaje = 150000 //luego termina saliendo $150.000.
				FinSi
			FinSi
			
		3: //Rosario - Buenos Aires
			si tope >= 70
				costoPasaje = 70000 //$70.000 para los primeros 10 pasajes
			SiNo
				si tope < 70 y tope >= 40 Entonces //luego se incrementa un 15% hasta los 40,
					costoPasaje = 70000 * 1.15
				SiNo
					costoPasaje = 150000 //luego termina saliendo $95.000.
				FinSi
			FinSi
			
		4: //Mar Del Plata - Mendoza
			si tope >= 70
				costoPasaje = 95000 //$95.000 para los primeros 10 pasajes
			SiNo
				si tope < 70 y tope >= 40 Entonces //luego se incrementa un 15% hasta los 40,
					costoPasaje = 95000 * 1.15
				SiNo
					costoPasaje = 125000 //luego termina saliendo $125.000.
				FinSi
			FinSi
			
		De Otro Modo:
			Mostrar "Algo ocurrio vuelva a intentarlo"
	Fin Segun
	
	si tramo1[tope, 4] = 'si' Entonces // EQUIPAJE EN BODEGA ES 'SI'
		costoPasaje = costoPasaje * 1.05	
	FinSi
FinFuncion

Funcion stock = calcularStock(ruta)
	Definir Stock Como Entero
	Segun ruta Hacer
			1:
				stock = 120
			2:
				stock = 120
			3:
				stock = 80
			4: 
				stock = 80
	Fin Segun
FinFuncion

SubProceso cargardatos(tramo, asientos, dimPasajeros)
	Definir dni, bodega, nombre Como caracter
	Definir dni2 Como Entero
	Mostrar " "
	Mostrar "A continuacion ingrese sus datos personales: "
	Mostrar " "
	
	Mostrar "Ingrese su Nombre y apellido: "
	leer nombre
	
	Mientras Longitud(nombre)<5 // valida dos caracteres para nombre un espacio y dos caracteres para el apellido
		Mostrar "Ocurrio un error, por favor, ingrese su Nombre y apellido separados por un espacio: "
		leer nombre
	FinMientras
	tramo[asientos, 1] = nombre
	
	Mostrar "ingrese su numero de DNI"
	Leer dni2
    Mientras (dni2 > 99999999) o (dni2 < 1000000) Hacer
		Mostrar "numero invalido, ingrese nuevamente su numero de dni"
		Leer dni2
	FinMientras
	dni = ConvertirATexto(dni2)
	tramo[asientos, 2] = dni

	Mostrar "ingrese su telefono: "
	Leer tramo[asientos, 3]
	
	Repetir
		Mostrar "Ingrese: (si) o (no) si desea o no agregar equipaje en bodega"
		Leer bodega
		tramo[asientos, 4] = Minusculas(bodega)
	Hasta Que tramo[asientos, 4]="si" o tramo[asientos, 4]="no"
	
	Mostrar "Ingrese su Nro de pasajero Frecuente: "
	Leer tramo[asientos, 5]
FinSubProceso

SubProceso mostrarDatos(ruta, tramo, asientos, costoPasaje)
	Definir costoPasajeC, asientoC Como Caracter
	
	Mostrar " "
	Mostrar "Resumen de la operación: "
	Mostrar "Ruta: " ruta
	Mostrar "Nombre y apellido: " tramo[asientos, 1]
	Mostrar "Ingrese su DNI: " tramo[asientos, 2]
	Mostrar "ingrese su telefono: " tramo[asientos, 3]
	Mostrar "Equipaje en bodega: " tramo[asientos, 4]
	Mostrar "Nro de pasajero Frecuente: " tramo[asientos, 5]
	
	costoPasajeC = ConvertirATexto(costoPasaje)
	tramo[asientos, 6] = costoPasajeC
	Mostrar "Costo del pasaje $: " tramo[asientos, 6]
	
	asientoC = ConvertirATexto(asientos)
	tramo[asientos, 7] = asientoC
	Mostrar "nro de asiento " tramo[asientos,7]  
	
	Mostrar " "
FinSubProceso

SubProceso ordenarASC(tramo, stock, tam)
	Para i = 1 Hasta stock Hacer	
		Para j = tam hasta 1 Hacer		
			Mostrar Sin Saltar " " tramo[i, j]	
		FinPara
		Mostrar ""
	FinPara
FinSubProceso

SubProceso ordenarDESC(tramo, stock, tam)
	Para i = stock Hasta 1 Con Paso -1 Hacer	
		Para j = tam hasta 1 Hacer		
			Mostrar Sin Saltar " " tramo[i, j]	
		FinPara
		Mostrar ""
	FinPara
FinSubProceso

SubProceso mostrarA(stock, asientos, ruta)
	Mostrar Sin Saltar "para la ruta " ruta
	Mostrar sin saltar "se vendieron " stock - asientos
	Mostrar Sin Saltar" asientos"
	Mostrar ""
FinSubProceso

SubProceso mostrarB(stock, asientos, ruta)
	Mostrar Sin Saltar"Para la ruta " ruta
	Mostrar sin saltar " se vendieron " (stock-asientos)*100/stock
	Mostrar Sin Saltar "% del total de asientos"
	Mostrar ""	
FinSubProceso


	