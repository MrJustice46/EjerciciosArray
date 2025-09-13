Funcion LeerConsumos(Servicios, Consumos)
	Definir consumo Como Real
	
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el valor del servicio de ", Servicios[Control], ":"
		Leer consumo
		Consumos[Control] <- consumo
		Escribir "--------------------------------------"
	FinPara
FinFuncion

Funcion MostrarConsumos(Servicios, Consumos)
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "El consumo de ", Servicios[Control], " fue: $", Consumos[Control]
	FinPara
FinFuncion

Funcion Total <- CalcularTotal(Consumos)
	Definir Total Como Real
    Total <- 0
    Para Control <- 1 Hasta 3 Con Paso 1 Hacer
        Total <- Total + Consumos[Control]
    FinPara
FinFuncion

Funcion ModificarConsumo(Servicios, Consumos)
    Definir Posicion Como Entero
    Definir consumo Como Real
    
    Escribir "Ingrese el número del servicio que desea modificar (1-3):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= 3 Entonces
        Escribir "Ingrese el nuevo valor de consumo para el servicio de ", Servicios[Posicion], ": "
        Leer consumo
        Consumos[Posicion] <- consumo
    SiNo
        Escribir "Servicio no existente."
    FinSi
FinFuncion

Funcion MostrarTotal(Total)
	Escribir "El total a pagar por todos los servicios es de: $", Total
FinFuncion

Algoritmo TotalServiciosArray
	Definir Respuesta Como Entero
	Definir Consumos, Total Como Real
	Definir Servicios Como Cadena
	
	Dimension Servicios[3]
	Dimension Consumos[3]
	
	Servicios[1] <- "agua"
	Servicios[2] <- "gas"
	Servicios[3] <- "electricidad"
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar consumos de los servicios"
        Escribir "2. Mostrar consumos ingresados"
        Escribir "3. Calcular y mostrar total"
        Escribir "4. Modificar un consumo"
        Escribir "5. Salir"
        Escribir "------------------------"
        Escribir "Ingrese una opción del menú (1-5):"
        Leer Respuesta
        Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerConsumos(Servicios, Consumos)
            Caso 2:
                MostrarConsumos(Servicios, Consumos)
            Caso 3:
				Total <- CalcularTotal(Consumos)
                MostrarTotal(Total)
            Caso 4:
                ModificarConsumo(Servicios, Consumos)
            Caso 5:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida."
        FinSegun
    Hasta Que Respuesta = 5
FinAlgoritmo
