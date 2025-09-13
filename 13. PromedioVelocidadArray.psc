Funcion LeerDatos(Tiempos, Distancias)
	Definir tiempo, distancia Como Real
	Para Control <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Ingrese la distancia que recorrio el carro ", Control, " (Km):"
		Leer distancia
		Distancias[Control] <- distancia
		
		Escribir "Ingrese el tiempo que tardo el carro ", Control, " (H):"
		Leer tiempo
		Tiempos[Control] <- tiempo
		Escribir "--------------------------------------"
	FinPara
FinFuncion

Funcion CalcularVelocidad(Velocidad, Tiempos, Distancias)
	Para Control <- 1 Hasta 2 Con Paso 1 Hacer
		Velocidad[Control] <- Distancias[Control] / Tiempos[Control]
	FinPara
FinFuncion

Funcion MostrarDatos(Tiempos, Distancias)
	Para Control <- 1 Hasta 2 Con Paso 1 Hacer
		Escribir "Carro ", Control, ":"
		Escribir " - Distancia recorrida: ", Distancias[Control], " Km"
		Escribir " - Tiempo tardado: ", Tiempos[Control], " H"
		Escribir "--------------------------------------"
	FinPara
FinFuncion

Funcion MostrarVelocidades(Velocidad)
    Para Control <- 1 Hasta 2 Con Paso 1 Hacer
        Escribir "La velocidad promedio del carro ", Control, " es: ", Velocidad[Control], " Km/H"
    FinPara
FinFuncion

Funcion ModificarDistancia(Distancias)
    Definir Posicion Como Entero
    Definir distancia Como Real
    
    Escribir "Ingrese el número del carro que desea modificar la distancia (1-2):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= 2 Entonces
        Escribir "Ingrese la nueva distancia del carro ", Posicion, " (Km):"
        Leer distancia
        Distancias[Posicion] <- distancia
    SiNo
        Escribir "Carro no existente."
    FinSi
FinFuncion

Funcion ModificarTiempo(Tiempos)
    Definir Posicion Como Entero
    Definir tiempo Como Real
    
    Escribir "Ingrese el número del carro que desea modificar el tiempo (1-2):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= 2 Entonces
        Escribir "Ingrese el nuevo tiempo del carro ", Posicion, " (H):"
        Leer tiempo
        Tiempos[Posicion] <- tiempo
    SiNo
        Escribir "Carro no existente."
    FinSi
FinFuncion


Algoritmo PromedioVelocidadArray
	Definir Respuesta, OpcionModificar Como Entero
	Definir Tiempos, Distancias, Velocidad Como Real
	
	Dimension Tiempos[2]
	Dimension Distancias[2]
	Dimension Velocidad[2]
	
	Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar datos (distancia y tiempo)"
        Escribir "2. Mostrar datos ingresados"
        Escribir "3. Calcular y mostrar velocidades"
        Escribir "4. Modificar datos"
        Escribir "5. Salir"
        Escribir "------------------------"
        Escribir "Ingrese una opción del menú (1-5):"
        Leer Respuesta
        Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerDatos(Tiempos, Distancias)
            Caso 2:
                MostrarDatos(Tiempos, Distancias)
            Caso 3:
                CalcularVelocidad(Velocidad, Tiempos, Distancias)
                MostrarVelocidades(Velocidad)
            Caso 4:
                Escribir "¿Qué desea modificar?"
                Escribir "1. Distancia recorrida"
                Escribir "2. Tiempo tardado"
                Leer OpcionModificar
				Escribir "------------------------"
                
                Segun OpcionModificar Hacer
                    Caso 1:
                        ModificarDistancia(Distancias)
                    Caso 2:
                        ModificarTiempo(Tiempos)
                FinSegun
            Caso 5:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida."
        FinSegun
    Hasta Que Respuesta = 5
	
FinAlgoritmo
