Funcion LeerProductos(Precios, Cantidades, Porcentajes, NumProductos)
    Definir precio, cantidad, porcentaje Como Real
    
    Para Control <- 1 Hasta NumProductos Con Paso 1 Hacer
        Escribir "Ingrese el precio del producto ", Control, ": "
        Leer precio
        Precios[Control] <- precio
		
        Escribir "Ingrese la cantidad a comprar del producto ", Control, ": "
        Leer cantidad
        Cantidades[Control] <- cantidad
		
        Escribir "Ingrese el porcentaje de descuento del producto ", Control, ": "
        Leer porcentaje
        Porcentajes[Control] <- porcentaje
		
        Escribir "----------------------------"
    FinPara
FinFuncion

Funcion CalcularTotales(Precios, Cantidades, Porcentajes, Totales, Descuentos, TotalesFinales, NumProductos)
    Para Control <- 1 Hasta NumProductos Con Paso 1 Hacer
        Totales[Control] <- Precios[Control] * Cantidades[Control]
        Descuentos[Control] <- Totales[Control] * (Porcentajes[Control] / 100)
        TotalesFinales[Control] <- Totales[Control] - Descuentos[Control]
    FinPara
FinFuncion

Funcion MostrarResultados(Precios, Cantidades, Porcentajes, Totales, Descuentos, TotalesFinales, NumProductos)
    Para Control <- 1 Hasta NumProductos Con Paso 1 Hacer
        Escribir "Producto ", Control, ":"
        Escribir " - Precio unitario: $", Precios[Control]
        Escribir " - Cantidad: ", Cantidades[Control]
        Escribir " - Porcentaje de descuento: ", Porcentajes[Control], "%"
        Escribir " - Total sin descuento: $", Totales[Control]
        Escribir " - Descuento aplicado: $", Descuentos[Control]
        Escribir " - Precio final: $", TotalesFinales[Control]
        Escribir "----------------------------"
    FinPara
FinFuncion

Funcion ModificarProducto(Precios, Cantidades, Porcentajes, NumProductos)
    Definir Posicion Como Entero
    Definir precio, cantidad, porcentaje Como Real
	
    Escribir "Ingrese el número de producto que desea modificar (1-", NumProductos, "): "
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumProductos Entonces
        Escribir "Nuevo precio del producto ", Posicion, ": "
        Leer precio
        Precios[Posicion] <- precio
		
        Escribir "Nueva cantidad: "
        Leer cantidad
        Cantidades[Posicion] <- cantidad
		
        Escribir "Nuevo porcentaje de descuento: "
        Leer porcentaje
        Porcentajes[Posicion] <- porcentaje
    SiNo
        Escribir "Producto no válido."
    FinSi
FinFuncion

Algoritmo PrecioDescuentoArraysMenuPractico
    Definir Precios, Cantidades, Porcentajes, Totales, Descuentos, TotalesFinales Como Real
    Definir NumProductos, Respuesta Como Entero
    
    Escribir "¿Cuántos productos desea ingresar? (1-3): "
    Leer NumProductos
    
    Dimension Precios[NumProductos]
    Dimension Cantidades[NumProductos]
    Dimension Porcentajes[NumProductos]
    Dimension Totales[NumProductos]
    Dimension Descuentos[NumProductos]
    Dimension TotalesFinales[NumProductos]
    
    Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar productos"
        Escribir "2. Mostrar productos, descuentos y totales"
        Escribir "3. Modificar productos y descuentos"
        Escribir "4. Salir"
        Escribir "------------------------"
        Leer Respuesta
        
        Segun Respuesta Hacer
            Caso 1:
                LeerProductos(Precios, Cantidades, Porcentajes, NumProductos)
            Caso 2:
                CalcularTotales(Precios, Cantidades, Porcentajes, Totales, Descuentos, TotalesFinales, NumProductos)
                MostrarResultados(Precios, Cantidades, Porcentajes, Totales, Descuentos, TotalesFinales, NumProductos)
            Caso 3:
                ModificarProducto(Precios, Cantidades, Porcentajes, NumProductos)
            Caso 4:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida"
        FinSegun
    Hasta Que Respuesta = 4
FinAlgoritmo
