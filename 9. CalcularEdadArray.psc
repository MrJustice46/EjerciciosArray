Funcion LeerAñoActual(AñoActual)
	Definir AñoAct Como Entero
	Para Control <- 1 Hasta 1 Con Paso 1 Hacer
		Escribir "Ingrese el año actual"
		Leer AñoAct
		AñoActual[Control] <- AñoAct
	FinPara
FinFuncion

Funcion LeerAñoNacimiento(AñoNacimiento)
	Definir AñoNac Como Entero
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el año de nacimiento de la persona ", Control
		Leer AñoNac
		AñoNacimiento[Control] <- AñoNac
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion CalcularEdad(AñoActual, AñoNacimiento, Edad)
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Edad[Control] <- AñoActual[1] - AñoNacimiento[Control]
	FinPara
FinFuncion

Funcion MostrarDatos(AñoActual, AñoNacimiento)
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Persona ", Control, ": "
		Escribir " - Año actual: ", AñoActual[1]
		Escribir " - Año nacimiento: ", AñoNacimiento[Control]
		Escribir "------------------------"
	FinPara
FinFuncion

Funcion MostrarEdad(Edad)
	Para Control <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "La edad de la persona ", Control, " es ", Edad[Control], " años"
	FinPara
FinFuncion

Funcion ModificarAñoActual(AñoActual)
    Definir Posicion Como Entero
    Definir AñoAct Como Real
	
    Escribir "Ingrese el nuevo año actual: " 
    Leer AñoAct
	AñoActual[1] <- AñoAct
    
FinFuncion

Funcion ModificarAñoNacimiento(AñoNacimiento)
    Definir Posicion, AñoNac Como Entero
	
    Escribir "Ingrese el número de persona que desea modificar (1-3):" 
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= 3 Entonces
        Escribir "Ingrese el nuevo año de nacimiento de la persona ", Posicion, ": "
        Leer AñoNac
        AñoNacimiento[Posicion] <- AñoNac
    SiNo
        Escribir "Persona invalida."
    FinSi
FinFuncion

Algoritmo CalcularEdadArray
	Definir Respuesta, AñoNacimiento, AñoActual, Edad, OpcionModificar Como Entero
	
	Dimension AñoNacimiento[3]
	Dimension AñoActual[1]
	Dimension Edad[3]
	
	LeerAñoActual(AñoActual)
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar año nacimiento"
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
                LeerAñoNacimiento(AñoNacimiento)
            Caso 2:
                MostrarDatos(AñoActual, AñoNacimiento)
			Caso 3:
				CalcularEdad(AñoActual, AñoNacimiento, Edad)
				MostrarEdad(Edad)
            Caso 4:
                Escribir "Que desea modificar?"
				Escribir "1. Año actual"
				Escribir "2. Año nacimiento"
				Leer OpcionModificar
				Escribir "------------------------"
				
				Segun OpcionModificar
					Caso 1: 
						ModificarAñoActual(AñoActual)
					Caso 2:
						ModificarAñoNacimiento(AñoNacimiento)
				FinSegun
            Caso 5:
				Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida"
        FinSegun
    Hasta Que Respuesta = 5
	
	
FinAlgoritmo
