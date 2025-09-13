Funcion LeerGanancias(Ingresos, Gastos, NumGanancia)
	Definir ingresoss, egresos Como Real
	Para Control <- 1 Hasta NumGanancia Con Paso 1 Hacer
		Escribir "Ingrese el total de ingresos ", Control
		Leer ingresoss
		Ingresos[Control] <- ingresoss
		
		Escribir "Ingrese el total de egresos ", Control
		Leer egresos
		Gastos[Control] <- egresos
		Escribir "----------------------------"
	FinPara
FinFuncion

Funcion CalcularGanancia(Ingresos, Gastos, NumGanancia, Totales)
	Para Control <- 1 Hasta NumGanancia Con Paso 1 Hacer
		Totales[Control] <- Ingresos[Control] - Gastos[Control]
	FinPara
FinFuncion

Funcion MostrarGanancias(Ingresos, Gastos, Totales, NumGanancia)
	Para Control <- 1 Hasta NumGanancia Con Paso 1 Hacer
		Escribir "Ganancia ", Control, ": "
		Escribir " - Ingresos: $", Ingresos[Control]
		Escribir " - Egresos: $", Gastos[Control]
		Escribir " - Ganancia neta: $", Totales[Control]
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion ModificarIngresos(Ingresos, NumGanancia)
    Definir Posicion Como Entero
    Definir ingresoss Como Real
	
    Escribir "Ingrese el número de ganancia que desea modificar (1-", NumGanancia, "):" 
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumGanancia Entonces
        Escribir "Ingrese el nuevo ingreso ", Posicion, ": "
        Leer ingresoss
        Ingresos[Posicion] <- ingresoss
    SiNo
        Escribir "Ganancia no existe."
    FinSi
FinFuncion

Funcion ModificarEgresos(Gastos, NumGanancia)
    Definir Posicion Como Entero
    Definir egresos Como Real
	
    Escribir "Ingrese el número de ganancia que desea modificar (1-", NumGanancia, "):" 
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumGanancia Entonces
        Escribir "Ingrese el nuevo egreso ", Posicion, ": "
        Leer egresos
        Gastos[Posicion] <- egresos
    SiNo
        Escribir "Ganancia no existe."
    FinSi
FinFuncion

Algoritmo GananciaNetaArray
	Definir NumGanancia, Respuesta, OpcionModificar Como Entero
	Definir Ingresos, Gastos, Totales Como Real
	
	Escribir "Ingrese cuantas ganancias netas desea calcular"
	Leer NumGanancia
	
	Dimension Ingresos[NumGanancia]
	Dimension Gastos[NumGanancia]
	Dimension Totales[NumGanancia]
	
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar ingresos y egresos"
        Escribir "2. Mostrar Ganancias"
        Escribir "3. Modificar Ganancias"
		Escribir "4. Salir"
        Escribir "------------------------"
		Escribir "Ingrese una opcion del menu (1-4)"
        Leer Respuesta
		Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerGanancias(Ingresos, Gastos, NumGanancia)
            Caso 2:
                CalcularGanancia(Ingresos, Gastos, NumGanancia, Totales)
                MostrarGanancias(Ingresos, Gastos, Totales, NumGanancia)
            Caso 3:
                Escribir "Que desea modificar?"
				Escribir "1. Ingresos"
				Escribir "2. Egresos"
				Leer OpcionModificar
				Escribir "------------------------"
				
				Segun OpcionModificar
					Caso 1: 
						ModificarIngresos(Ingresos, NumGanancia)
					Caso 2:
						ModificarEgresos(Gastos, NumGanancia)
				FinSegun
            Caso 4:
				Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida"
        FinSegun
    Hasta Que Respuesta = 4
FinAlgoritmo
