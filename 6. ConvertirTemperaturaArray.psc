Funcion LeerTemperatura(Temperatura, NumTemp)
	Definir temp Como Real
	Para Control <- 1 Hasta NumTemp Con Paso 1 Hacer
		Escribir "Ingrese la temperatura ", Control, " en grados celsius: " 
		Leer temp
		Temperatura[Control] <- temp
		Escribir "----------------------------"
	FinPara
FinFuncion

Funcion ConvertirFarenheit(Temperatura, NumTemp, Farenheit)
	Para Control <- 1 Hasta NumTemp Con Paso 1 Hacer
		Farenheit[Control] <- (Temperatura[Control] * 9/5) + 32
	FinPara
FinFuncion

Funcion MostrarTemperaturas(Temperatura, NumTemp, Farenheit)
	Para Control <- 1 Hasta NumTemp Con Paso 1 Hacer
		Escribir "La temperatura ", Control, ": ", Temperatura[Control], "°C en farenheit es: ", Farenheit[Control], "°F"
	FinPara
FinFuncion

Funcion ModificarTemperatura(Temperatura, NumTemp)
    Definir Posicion Como Entero
    Definir temp Como Real
	
    Escribir "Ingrese la temperatura que desea modificar (1-", NumTemp, "): "
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumTemp Entonces
        Escribir "Ingrese la nueva temperatura ", Posicion, ": "
        Leer temp
		Temperatura[Posicion] <- temp
    SiNo
        Escribir "Numero de area no valido"
    FinSi
FinFuncion

Algoritmo ConvertirTemperaturaArray
	Definir Temperatura, Farenheit Como Real
	Definir NumTemp Como Entero
	
	
	Escribir "Ingrese el numero de temperaturas que desea convertir a farenheit"
	Leer NumTemp
	
	Dimension Temperatura[NumTemp]
	Dimension Farenheit[NumTemp]
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Guardar temperaturas"
        Escribir "2. Mostrar temperaturas y conversion (Farenheit)"
        Escribir "3. Modificar temperaturas"
        Escribir "4. Salir"
        Escribir "------------------------"
		Escribir "Ingrese una opcion del menu (1-4)"
        Leer Respuesta
		Escribir "----------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerTemperatura(Temperatura, NumTemp)
            Caso 2:
                ConvertirFarenheit(Temperatura, NumTemp, Farenheit)
                MostrarTemperaturas(Temperatura, NumTemp, Farenheit)
            Caso 3:
				ModificarTemperatura(Temperatura, NumTemp)
            Caso 4:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida"
        FinSegun
    Hasta Que Respuesta = 4
FinAlgoritmo
