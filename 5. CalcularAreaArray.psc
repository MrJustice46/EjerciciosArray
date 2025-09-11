Funcion LeerAreas(Bases, Alturas, NumAreas)
	Definir base, altura Como Real
	Para Control <- 1 Hasta NumAreas Con Paso 1 Hacer
		Escribir "Ingrese el valor de la base ", Control, ": "
		Leer base
		Bases[Control] <- base
		
		Escribir "Ingrese el valor de la altura ", Control, ": "
		Leer altura
		Alturas[Control] <- altura
		
		Escribir "----------------------------"
	FinPara
FinFuncion

Funcion CalcularArea(Bases, Alturas, NumAreas, Areas)
	Para Control <- 1 Hasta NumAreas Con Paso 1 Hacer
		Areas[Control] <- Bases[Control] * Alturas[Control]
	FinPara
FinFuncion

Funcion MostrarAreas(Bases, Alturas, NumAreas, Areas)
	Para Control <- 1 Hasta NumAreas Con Paso 1 Hacer
		Escribir "Area ", Control, ": "
		Escribir " - Base: ", Bases[Control]
		Escribir " - Altura: ", Alturas[Control]
		Escribir " - Area calculada: ", Areas[Control]
		Escribir "----------------------------"
	FinPara
FinFuncion

Funcion ModificarArea(Bases, Alturas, NumAreas)
    Definir Posicion Como Entero
    Definir base, altura Como Real
	
    Escribir "Ingrese el area que desea modificar (1-", NumAreas, "): "
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumAreas Entonces
        Escribir "Nueva base del area ", Posicion, ": "
        Leer base
		Bases[Posicion] <- base
        
        Escribir "Nueva altura del area ", Posicion, ": "
        Leer altura
		Alturas[Posicion] <- altura
    SiNo
        Escribir "Numero de area no valido"
    FinSi
FinFuncion

Algoritmo CalcularAreaArray
	Definir Areas, Bases, Alturas Como Real
	Definir NumAreas Como Entero
	
	
	Escribir "Ingrese el numero de areas que desea calcular"
	Leer NumAreas
	
	Dimension Bases[NumAreas]
	Dimension Alturas[NumAreas]
	Dimension Areas[NumAreas]
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Guardar base y altura"
        Escribir "2. Mostrar areas y calculo del area"
        Escribir "3. Modificar areas (base y altura)"
        Escribir "4. Salir"
        Escribir "------------------------"
		Escribir "Ingrese una opcion del menu (1-4)"
        Leer Respuesta
		
		Escribir "----------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerAreas(Bases, Alturas, NumAreas)
            Caso 2:
                CalcularArea(Bases, Alturas, NumAreas, Areas)
                MostrarAreas(Bases, Alturas, NumAreas, Areas)
            Caso 3:
                ModificarArea(Bases, Alturas, NumAreas)
            Caso 4:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida"
        FinSegun
    Hasta Que Respuesta = 4
FinAlgoritmo
