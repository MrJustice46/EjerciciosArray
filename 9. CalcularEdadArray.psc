Funcion LeerA�oActual(A�oActual)
	Definir A�oAct Como Entero
	Para Control <- 1 Hasta 1 Con Paso 1 Hacer
		Escribir "Ingrese el a�o actual"
		Leer A�oAct
		A�oActual[Control] <- A�oAct
	FinPara
FinFuncion

Funcion LeerA�oNacimiento(A�oNacimiento)
	Definir A�oNac Como Entero
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el a�o de nacimiento de la persona ", Control
		Leer A�oNac
		A�oNacimiento[Control] <- A�oNac
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion CalcularEdad(A�oActual, A�oNacimiento, Edad)
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Edad[Control] <- A�oActual[1] - A�oNacimiento[Control]
	FinPara
FinFuncion

Funcion MostrarDatos(A�oActual, A�oNacimiento)
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Persona ", Control, ": "
		Escribir " - A�o actual: ", A�oActual[1]
		Escribir " - A�o nacimiento: ", A�oNacimiento[Control]
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion MostrarEdad(Edad)
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "La edad de la persona ", Control, " es ", Edad[Control], " a�os"
	FinPara
FinFuncion

Funcion ModificarA�oActual(A�oActual)
    Definir Posicion Como Entero
    Definir A�oAct Como Real
	
    Escribir "Ingrese el nuevo a�o actual: " 
    Leer A�oAct
	A�oActual[1] <- A�oAct
    
FinFuncion

Funcion ModificarA�oNacimiento(A�oNacimiento)
    Definir Posicion, A�oNac Como Entero
	
    Escribir "Ingrese el n�mero de persona que desea modificar (1-3):" 
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= 3 Entonces
        Escribir "Ingrese el nuevo a�o de nacimiento de la persona ", Posicion, ": "
        Leer A�oNac
        A�oNacimiento[Posicion] <- A�oNac
    SiNo
        Escribir "Persona invalida."
    FinSi
FinFuncion

Algoritmo CalcularEdadArray
	Definir Respuesta, A�oNacimiento, A�oActual, Edad, OpcionModificar Como Entero
	
	Dimension A�oNacimiento[3]
	Dimension A�oActual[1]
	Dimension Edad[3]
	
	LeerA�oActual(A�oActual)
	
	Repetir
        Escribir "--------- MEN� ---------"
        Escribir "1. Ingresar a�o nacimiento"
        Escribir "2. Mostrar datos de las personas"
        Escribir "3. Mostrar edades"
		Escribir "4. Modificar datos"
		Escribir "5. Salir"
        Escribir "------------------------"
		Escribir "Ingrese una opcion del menu (1-5)"
        Leer Respuesta
		Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerA�oNacimiento(A�oNacimiento)
            Caso 2:
                MostrarDatos(A�oActual, A�oNacimiento)
			Caso 3:
				CalcularEdad(A�oActual, A�oNacimiento, Edad)
				MostrarEdad(Edad)
            Caso 4:
                Escribir "Que desea modificar?"
				Escribir "1. A�o actual"
				Escribir "2. A�o nacimiento"
				Leer OpcionModificar
				Escribir "------------------------"
				
				Segun OpcionModificar
					Caso 1: 
						ModificarA�oActual(A�oActual)
					Caso 2:
						ModificarA�oNacimiento(A�oNacimiento)
				FinSegun
            Caso 5:
				Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opci�n v�lida"
        FinSegun
    Hasta Que Respuesta = 5
	
	
FinAlgoritmo
