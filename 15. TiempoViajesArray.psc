Funcion LeerTramos(Tiempos, NumTramos)
	Definir tiempo Como Real
	
	Para Control <- 1 Hasta NumTramos Con Paso 1 Hacer
		Escribir "Ingrese el tiempo que duro el tramo ", Control, " en minutos:"
		Leer tiempo
		Tiempos[Control] <- tiempo
		Escribir "--------------------------------------"
	FinPara
FinFuncion

Funcion MostrarTramos(Tiempos, NumTramos)
	Para Control <- 1 Hasta NumTramos Con Paso 1 Hacer
		Escribir "El tramo ", Control, " fue de ", Tiempos[Control], " minutos"
	FinPara
FinFuncion

Funcion Total <- CalcularTotal(Tiempos, NumTramos)
	Definir Total Como Real
	Total <- 0
	
	Para Control <- 1 Hasta NumTramos Con Paso 1 Hacer
		Total <- Total + Tiempos[Control]
	FinPara
FinFuncion

Funcion MostrarTotal(Total)
	Escribir "El tiempo total del viaje fue: ", Total, " minutos"
FinFuncion


Funcion ModificarTramo(Tiempos, NumTramos)
	Definir Posicion Como Entero
	Definir tiempo Como Real
	
	Escribir "Ingrese el número del tramo que desea modificar (1-", NumTramos, "):"
	Leer Posicion
	
	Si Posicion >= 1 Y Posicion <= NumTramos Entonces
		Escribir "Ingrese el nuevo tiempo del tramo ", Posicion, " en minutos:"
		Leer tiempo
		Tiempos[Posicion] <- tiempo
	SiNo
		Escribir "Tramo no existente."
	FinSi
FinFuncion


Algoritmo TiempoViajesArray
	Definir NumTramos, Respuesta Como Entero
	Definir Tiempos, Total Como Real
	
	Escribir "¿Cuantos tramos tiene el viaje?"
	Leer NumTramos
	
	Dimension Tiempos[NumTramos]
	
	Repetir
		Escribir "--------- MENÚ ---------"
		Escribir "1. Ingresar tiempos de los tramos"
		Escribir "2. Mostrar tiempos ingresados"
		Escribir "3. Calcular tiempo total del viaje"
		Escribir "4. Modificar un tramo"
		Escribir "5. Salir"
		Escribir "------------------------"
		Escribir "Ingrese una opción del menú (1-5):"
		Leer Respuesta
		Escribir "------------------------"
		
		Segun Respuesta Hacer
			Caso 1:
				LeerTramos(Tiempos, NumTramos)
			Caso 2:
				MostrarTramos(Tiempos, NumTramos)
			Caso 3:
				Total <- CalcularTotal(Tiempos, NumTramos)
				MostrarTotal(Total)
			Caso 4:
				ModificarTramo(Tiempos, NumTramos)
			Caso 5:
				Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
			De Otro Modo:
				Escribir "Ingrese una opción valida."
		FinSegun
	Hasta Que Respuesta = 5
FinAlgoritmo
