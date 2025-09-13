Funcion LeerVentas(Ventas)
	Definir venta Como Real
	Para Control <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese el valor de la venta ", control, " :"
		Leer venta
		Ventas[Control] <- venta
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion Resultados <- CalcularTotales(Ventas)
	Resultados <- 0
	Para Control <- 1 Hasta 7 Con Paso 1 Hacer
		Resultados <- Resultados + Ventas[Control]
	FinPara
FinFuncion

Funcion MostrarVentas(Ventas)
	Para Control <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "La venta ", Control, " de la semana es de $", Ventas[Control]
	FinPara
FinFuncion

Funcion MostrarTotalVentas(Suma)
	Escribir "El total de las ventas de la semana es de: $", Suma
FinFuncion

Funcion ModificarVentas(Ventas)
    Definir Posicion Como Entero
    Definir venta Como Real
	
    Escribir "Ingrese el número de venta que desea modificar (1-7): "
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= 7 Entonces
        Escribir "Nuevo valor de venta ", Posicion, ": "
        Leer venta
        Ventas[Posicion] <- venta
    SiNo
        Escribir "Venta no existe."
    FinSi
FinFuncion

Algoritmo VentasDiariasArray
	Definir Ventas, Totales, Suma Como Real
	Definir Respuesta Como Entero
	
	Dimension Ventas[7]
	Dimension Totales[7]
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar productos"
        Escribir "2. Mostrar ventas"
        Escribir "3. Mostrar total de las ventas de la semana"
        Escribir "4. Modificar ventas"
		Escribir "5. Salir"
        Escribir "------------------------"
        Escribir "Ingrese una opcion del menu (1-5)"
        Leer Respuesta
		Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerVentas(Ventas)
            Caso 2:
                Suma <- CalcularTotales(Ventas)
                MostrarVentas(Ventas)
            Caso 3:
				Suma <- CalcularTotales(Ventas)
                MostrarTotalVentas(Suma)
            Caso 4:
				ModificarVentas(Ventas)
			Caso 5:
				Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida"
        FinSegun
    Hasta Que Respuesta = 5
FinAlgoritmo
