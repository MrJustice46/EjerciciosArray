Funcion LeerDatos(Tiempo, Tarifa, NumCalculos)
	Definir tiempos, tarifas Como Real
	Para Control <- 1 Hasta NumCalculos Con Paso 1 Hacer
		Escribir "Ingrese el tiempo ", Control, " trabajado en horas"
		Leer tiempos
		Tiempo[Control] <- tiempos
		
		Escribir "Ingrese la tarifa ", Control, " por horas"
		Leer tarifas 
		Tarifa[Control] <- tarifas
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion CalcularCosto(Tiempo, Tarifa, Totales, NumCalculos)
	Para Control <- 1 Hasta NumCalculos Con Paso 1 Hacer
		Totales[Control] <- Tiempo[Control] * Tarifa[Control]
	FinPara
FinFuncion

Funcion MostrarDatos(Tiempo, Tarifa, NumCalculos)
	Para Control <- 1 Hasta NumCalculos Con Paso 1 Hacer
		Escribir "Calculo ", Control, ": "
		Escribir " - Tiempo trabajado: ", Tiempo[Control]
		Escribir " - Tarifa por hora: $", Tarifa[Control]
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion MostrarCosto(Totales, NumCalculos)
	Para Control <- 1 Hasta NumCalculos Con Paso 1 Hacer
		Escribir "El costo total del calculo ", Control, " es de: $", Totales[Control]
	FinPara
FinFuncion

Funcion ModificarTiempo(NumCalculos, Tiempo)
    Definir Posicion, tiempos Como Entero
	
    Escribir "Ingrese el número del tiempo que desea modificar (1-", NumCalculos, "):" 
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumCalculos Entonces
        Escribir "Ingrese el nuevo tiempo del calculo ", Posicion, ": "
        Leer tiempos
		Tiempo[Posicion] <- tiempos
    SiNo
        Escribir "Tiempo no existente."
    FinSi
FinFuncion

Funcion ModificarTarifa(NumCalculos, Tarifa)
    Definir Posicion, tarifas Como Entero
	
    Escribir "Ingrese el número de tarifa que desea modificar (1-", NumCalculos, "):" 
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumCalculos Entonces
        Escribir "Ingrese la nueva tarifa del calculo ", Posicion, ": "
        Leer tarifas
        Tarifa[Posicion] <- tarifas
    SiNo
        Escribir "Tarifa no existente."
    FinSi
FinFuncion


Algoritmo CostoTotalArray
	Definir NumCalculos, Respuesta, OpcionModificar Como Entero
	Definir Tiempo, Tarifa, Totales Como Real
	
	
	Escribir "Ingrese cuantos calculos desea hacer"
	Leer NumCalculos
	
	Dimension Tiempo[NumCalculos]
	Dimension Tarifa[NumCalculos]
	Dimension Totales[NumCalculos]
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar tiempo y tarifa"
        Escribir "2. Mostrar datos"
        Escribir "3. Mostrar costo total"
		Escribir "4. Modificar datos"
		Escribir "5. Salir"
        Escribir "------------------------"
		Escribir "Ingrese una opcion del menu (1-5)"
        Leer Respuesta
		Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerDatos(Tiempo, Tarifa, NumCalculos)
            Caso 2:
                MostrarDatos(Tiempo, Tarifa, NumCalculos)
			Caso 3:
				CalcularCosto(Tiempo, Tarifa, Totales, NumCalculos)
				MostrarCosto(Totales, NumCalculos)
            Caso 4:
                Escribir "Que desea modificar?"
				Escribir "1. Tiempo trabajado"
				Escribir "2. Tarifa por hora"
				Leer OpcionModificar
				Escribir "------------------------"
				
				Segun OpcionModificar
					Caso 1: 
						ModificarTiempo(NumCalculos, Tiempo)
					Caso 2:
						ModificarTarifa(NumCalculos, Tarifa)
				FinSegun
            Caso 5:
				Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida"
        FinSegun
    Hasta Que Respuesta = 5
	
FinAlgoritmo
