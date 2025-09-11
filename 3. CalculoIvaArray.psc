Funcion LeerProductos(Precios, Cantidades, NumProductos)
	Definir Precio Como Real
	Definir Cantidad Como Entero
    Para Control <- 1 Hasta NumProductos Con Paso 1 Hacer
        Escribir "Ingrese el precio del producto ", Control, ": "
		Leer Precio
		Precios[Control] <- Precio
        Escribir "Ingrese la cantidad a comprar del producto ", Control, ": "
        Leer Cantidad
		Cantidades[Control] <- Cantidad
        Escribir "----------------------------"
    FinPara
FinFuncion

Funcion CalcularTotales(Precios, Cantidades, TotalSinIva, TotalConIva, NumProductos)
    Para Control <- 1 Hasta NumProductos Con Paso 1 Hacer
        TotalSinIva[Control] <- Precios[Control] * Cantidades[Control]
        TotalConIva[Control] <- TotalSinIva[Control] * 1.19
    FinPara
FinFuncion

Funcion MostrarResultados(Precios, Cantidades, TotalesSinIva, TotalesConIva, NumProductos)
    Para Control <- 1 Hasta NumProductos Con Paso 1 Hacer
        Escribir "Producto ", Control, ":"
        Escribir " - Precio: ", Precios[Control]
        Escribir " - Cantidad: ", Cantidades[Control]
        Escribir " - Total sin IVA: ", TotalesSinIva[Control]
        Escribir " - Total con IVA: ", TotalesConIva[Control]
        Escribir "----------------------------"
    FinPara
FinFuncion

Funcion ModificarProducto(Precios, Cantidades, NumProductos)
    Definir Posicion, Cantidad Como Entero
	Definir Precio Como Real
    Escribir "Ingrese la posicion del producto que desea modificar (1-", NumProductos, "): "
    Leer Posicion
    Si Posicion >= 1 Y Posicion <= NumProductos Entonces
        Escribir "Ingrese el nuevo precio del producto ", Posicion, ": "
        Leer Precio
		Precios[Posicion] <- Precio
        Escribir "Ingrese la nueva cantidad del producto ", Posicion, ": "
        Leer Cantidad
		Cantidades[Posicion] <- Cantidad
    SiNo
        Escribir "La posicion no existe."
    FinSi
FinFuncion

Algoritmo CalculoIvaArray
    Definir Precios, Cantidades, TotalSinIva, TotalConIva Como Real
    Definir NumProductos, Respuesta Como Entero
    
    Escribir "¿Cuántos productos desea ingresar? (1-3): "
    Leer NumProductos
    
    Dimension Precios[NumProductos]
    Dimension Cantidades[NumProductos]
    Dimension TotalSinIva[NumProductos]
    Dimension TotalConIva[NumProductos]
    
    Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Guardar productos"
        Escribir "2. Mostrar productos y totales"
        Escribir "3. Modificar un producto"
        Escribir "4. Salir"
        Escribir "------------------------"
        Escribir "Ingrese una opcion (1-4): "
        Leer Respuesta
        
        Segun Respuesta Hacer
            Caso 1:
                LeerProductos(Precios, Cantidades, NumProductos)
                CalcularTotales(Precios, Cantidades, TotalSinIva, TotalConIva, NumProductos)
            Caso 2:
                MostrarResultados(Precios, Cantidades, TotalSinIva, TotalConIva, NumProductos)
            Caso 3:
                ModificarProducto(Precios, Cantidades, NumProductos)
                CalcularTotales(Precios, Cantidades, TotalSinIva, TotalConIva, NumProductos)
            Caso 4:
                Escribir "Saliendo, gracias por usar el programa."
			De Otro Modo:
				Escribir "Ingrese una opcion valida"
        FinSegun
    Hasta Que Respuesta = 4
FinAlgoritmo
