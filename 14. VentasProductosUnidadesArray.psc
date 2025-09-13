Funcion LeerDatos(Precios, Unidades)
    Definir precio, unidad Como Real
    Para Control <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el precio del Producto ", Control, ":"
        Leer precio
        Precios[Control] <- precio
		
        Escribir "Ingrese unidades vendidas del Producto ", Control, ":"
        Leer unidad
        Unidades[Control] <- unidad
		
        Escribir "--------------------------------------"
    FinPara
FinFuncion

Funcion totalGeneral <- CalcularTotales(Totales, Precios, Unidades)
	Definir totalGeneral Como Real
	totalGeneral <- 0
    Para Control <- 1 Hasta 3 Con Paso 1 Hacer
        Totales[Control] <- Precios[Control] * Unidades[Control]
		totalGeneral <- totalGeneral + Totales[Control]
    FinPara
FinFuncion

Funcion MostrarDatos(Precios, Unidades)
    Para Control <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Producto ", Control, ":"
        Escribir " - Precio: $", Precios[Control]
        Escribir " - Unidades: ", Unidades[Control]
        Escribir "--------------------------------------"
    FinPara
FinFuncion

Funcion MostrarTotales(Totales, totalGeneral)
    Para Control <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Total a pagar por Producto ", Control, ": $", Totales[Control]
    FinPara
    Escribir "TOTAL GENERAL A PAGAR POR TODO: $", totalGeneral
    Escribir "--------------------------------------"
FinFuncion

Funcion ModificarPrecio(Precios)
    Definir Posicion Como Entero
    Definir precio Como Real
	
    Escribir "Ingrese el número del producto que desea modificar el precio (1-3):"
    Leer Posicion
	
    Si Posicion >= 1 Y Posicion <= 3 Entonces
        Escribir "Ingrese el nuevo precio del producto ", Posicion, ":"
        Leer precio
        Precios[Posicion] <- precio
    SiNo
        Escribir "Producto no existente."
    FinSi
FinFuncion

Funcion ModificarUnidades(Unidades)
    Definir Posicion Como Entero
    Definir unidad Como Real
	
    Escribir "Ingrese el número del producto que desea modificar las unidades (1-3):"
    Leer Posicion
	
    Si Posicion >= 1 Y Posicion <= 3 Entonces
        Escribir "Ingrese las nuevas unidades del producto ", Posicion, ":"
        Leer unidad
        Unidades[Posicion] <- unidad
    SiNo
        Escribir "Producto no existente."
    FinSi
FinFuncion

Algoritmo VentasProductosUnidadesArray
    Definir Respuesta, OpcionModificar Como Entero
    Definir Precios, Unidades, Totales, totalGeneral Como Real
	
    Dimension Precios[3]
    Dimension Unidades[3]
    Dimension Totales[3]
	
    Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar datos (precio y unidades)"
        Escribir "2. Mostrar datos ingresados"
        Escribir "3. Calcular y mostrar totales"
        Escribir "4. Modificar datos"
        Escribir "5. Salir"
        Escribir "------------------------"
        Escribir "Ingrese una opción del menú (1-5):"
        Leer Respuesta
        Escribir "------------------------"
		
        Segun Respuesta Hacer
            Caso 1:
                LeerDatos(Precios, Unidades)
            Caso 2:
                MostrarDatos(Precios, Unidades)
            Caso 3:
                totalGeneral <- CalcularTotales(Totales, Precios, Unidades)
                MostrarTotales(Totales, totalGeneral)
            Caso 4:
                Escribir "¿Qué desea modificar?"
                Escribir "1. Precio de un producto"
                Escribir "2. Unidades de un producto"
                Leer OpcionModificar
				Escribir "------------------------"
				
                Segun OpcionModificar
                    Caso 1:
                        ModificarPrecio(Precios)
                    Caso 2:
                        ModificarUnidades(Unidades)
                FinSegun
            Caso 5:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida."
        FinSegun
    Hasta Que Respuesta = 5
	
FinAlgoritmo


