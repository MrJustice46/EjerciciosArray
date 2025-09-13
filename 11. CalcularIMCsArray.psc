Funcion LeerDatos(Pesos, Alturas, NumPersonas)
    Definir peso, altura Como Real
    Para Control <- 1 Hasta NumPersonas Con Paso 1 Hacer
        Escribir "Ingrese el peso de la persona ", Control, " (kg): "
        Leer peso
        Pesos[Control] <- peso
		
        Escribir "Ingrese la altura de la persona ", Control, " (m): "
        Leer altura
        Alturas[Control] <- altura
		
        Escribir "-----------------------------"
    FinPara
FinFuncion

Funcion CalcularIMCs(Pesos, Alturas, IMCs, NumPersonas)
    Para Control <- 1 Hasta NumPersonas Con Paso 1 Hacer
        IMCs[Control] <- Pesos[Control] / (Alturas[Control] ^ 2)
    FinPara
FinFuncion

Funcion MostrarDatos(Pesos, Alturas, NumPersonas)
    Para Control <- 1 Hasta NumPersonas Con Paso 1 Hacer
        Escribir "Persona ", Control, ": "
        Escribir " - Peso: ", Pesos[Control], " kg"
        Escribir " - Altura: ", Alturas[Control], " m"
        Escribir "-----------------------------"
    FinPara
FinFuncion

Funcion MostrarIMCs(IMCs, NumPersonas)
    Para Control <- 1 Hasta NumPersonas Con Paso 1 Hacer
        Escribir "El IMC de la persona ", Control, " es: ", IMCs[Control]
    FinPara
FinFuncion

Funcion ModificarPeso(Pesos, NumPersonas)
    Definir Posicion Como Entero
    Definir peso Como Real
    
    Escribir "Ingrese el número de la persona cuyo peso desea modificar (1-", NumPersonas, "):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumPersonas Entonces
        Escribir "Ingrese el nuevo peso de la persona ", Posicion, ": "
        Leer peso
        Pesos[Posicion] <- peso
    SiNo
        Escribir "Persona no existente."
    FinSi
FinFuncion

Funcion ModificarAltura(Alturas, NumPersonas)
    Definir Posicion Como Entero
    Definir altura Como Real
    
    Escribir "Ingrese el número de la persona cuya altura desea modificar (1-", NumPersonas, "):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumPersonas Entonces
        Escribir "Ingrese la nueva altura de la persona ", Posicion, ": "
        Leer altura
        Alturas[Posicion] <- altura
    SiNo
        Escribir "Persona no existente."
    FinSi
FinFuncion


Algoritmo CalcularIMCsArray
    Definir NumPersonas, Respuesta, OpcionModificar Como Entero
    Definir Pesos, Alturas, IMCs Como Real
    
    Escribir "Ingrese cuántas personas desea evaluar"
    Leer NumPersonas
    
    Dimension Pesos[NumPersonas]
    Dimension Alturas[NumPersonas]
    Dimension IMCs[NumPersonas]
    
    Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar datos de las personas"
        Escribir "2. Mostrar datos"
        Escribir "3. Calcular y mostrar IMCs"
        Escribir "4. Modificar datos"
        Escribir "5. Salir"
        Escribir "------------------------"
        Escribir "Ingrese una opción del menú (1-5):"
        Leer Respuesta
        Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerDatos(Pesos, Alturas, NumPersonas)
            Caso 2:
                MostrarDatos(Pesos, Alturas, NumPersonas)
            Caso 3:
                CalcularIMCs(Pesos, Alturas, IMCs, NumPersonas)
                MostrarIMCs(IMCs, NumPersonas)
            Caso 4:
                Escribir "¿Qué desea modificar?"
                Escribir "1. Peso"
                Escribir "2. Altura"
                Leer OpcionModificar
				Escribir "------------------------"
                
                Segun OpcionModificar
                    Caso 1:
                        ModificarPeso(Pesos, NumPersonas)
                    Caso 2:
                        ModificarAltura(Alturas, NumPersonas)
                FinSegun
            Caso 5:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opcion valida."
        FinSegun
    Hasta Que Respuesta = 5
FinAlgoritmo

