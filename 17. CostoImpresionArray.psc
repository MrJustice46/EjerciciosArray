Funcion LeerDatos(Paginas, Precios, NumImpresion)
	Definir pagina Como Entero
	Definir precio Como Real
	
	Para Control <- 1 Hasta NumImpresion Con Paso 1 Hacer
		Escribir "Ingrese el numero de paginas a imprimir de la impresion ", Control, ":"
		Leer pagina
		Paginas[Control] <- pagina
		
		Escribir "Ingrese el precio por pagina de la impresion ", Control, ":"
		Leer precio
		Precios[Control] <- precio
		Escribir "------------------------"
	Fin Para
FinFuncion

Funcion CalcularTotales(Paginas, Precios, Totales, NumImpresion)
	Para Control <- 1 Hasta NumImpresion Con Paso 1 Hacer
		Totales[Control] <- Paginas[Control] * Precios[Control]
	FinPara
FinFuncion

Funcion TotalGeneral <- CalcularTotalGeneral(Totales, NumImpresion)
	Definir TotalGeneral Como Real
	TotalGeneral <- 0
	
	Para Control <- 1 Hasta NumImpresion Con Paso 1 Hacer
		TotalGeneral <- TotalGeneral + Totales[Control]
	FinPara
FinFuncion

Funcion MostrarImpresiones(Paginas, Precios, Totales, NumImpresion)
	Para Control <- 1 Hasta NumImpresion Con Paso 1 Hacer
		Escribir "Impresion ", Control, ":"
		Escribir " - Paginas: ", Paginas[Control]
		Escribir " - Precio por pagina: $", Precios[Control]
		Escribir " - Costo total: $", Totales[Control]
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion MostrarTotalGeneral(TotalGeneral)
	Escribir "El costo total de todas las impresiones es de: $", TotalGeneral
FinFuncion

Funcion ModificarPaginas(Paginas, NumImpresion)
	Definir Posicion, pagina Como Entero
	
	Escribir "Ingrese el número de impresion que desea modificar (1-", NumImpresion, "):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumImpresion Entonces
        Escribir "Ingrese el nuevo numero de paginas a imprimir de la impresion ", Posicion, ": "
        Leer pagina
        Paginas[Posicion] <- pagina
    SiNo
        Escribir "Impresión no existente."
    FinSi
FinFuncion

Funcion ModificarPrecios(Precios, NumImpresion)
	Definir Posicion Como Entero
	Definir precio Como Real
	
	Escribir "Ingrese el número de impresion que desea modificar (1-", NumImpresion, "):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumImpresion Entonces
        Escribir "Ingrese el nuevo precio por pagina de la impresion ", Posicion, ": "
        Leer precio
        Precios[Posicion] <- precio
    SiNo
        Escribir "Impresión no existente."
    FinSi
FinFuncion

Algoritmo CostoImpresionArray
	Definir Paginas, Respuesta, OpcionModificar Como Entero
	Definir Precios, TotalGeneral, Totales Como Real
	
	
	Escribir "Cuantas impresiones desea hacer?"
	Leer NumImpresion
	
	Dimension Paginas[NumImpresion]
	Dimension Precios[NumImpresion]
	Dimension Totales[NumImpresion]
	
	
	Repetir
		Escribir "--------- MENÚ ---------"
		Escribir "1. Ingresar datos de impresión"
		Escribir "2. Mostrar impresiones y costo de impresion"
		Escribir "3. Mostrar costo total general"
		Escribir "4. Modificar una impresion"
		Escribir "5. Salir"
		Escribir "------------------------"
		Escribir "Ingrese una opción del menú (1-5):"
		Leer Respuesta
		Escribir "------------------------"
		
		Segun Respuesta Hacer
			Caso 1:
				LeerDatos(Paginas, Precios, NumImpresion)
			Caso 2:
				CalcularTotales(Paginas, Precios, Totales, NumImpresion)
				MostrarImpresiones(Paginas, Precios, Totales, NumImpresion)
			Caso 3:
				TotalGeneral <- CalcularTotalGeneral(Totales, NumImpresion)
				MostrarTotalGeneral(TotalGeneral)
			Caso 4:
				Escribir "¿Qué desea modificar?"
                Escribir "1. Paginas a imprimir"
                Escribir "2. Precio por pagina"
                Leer OpcionModificar
				Escribir "------------------------"
                
                Segun OpcionModificar Hacer
                    Caso 1:
                        ModificarPaginas(Paginas, NumImpresion)
                    Caso 2:
                        ModificarPrecios(Precios, NumImpresion)
                FinSegun
			Caso 5:
				Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
			De Otro Modo:
				Escribir "Ingrese una opción válida."
		FinSegun
	Hasta Que Respuesta = 5
FinAlgoritmo
