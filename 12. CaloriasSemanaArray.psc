Funcion LeerCalorias(Calorias, Dias, NumDias)
    Definir caloria Como Real
    Para Control <- 1 Hasta NumDias Con Paso 1 Hacer
        Escribir "¿Cuántas calorias consumió el dia ", Dias[Control], "?"
        Leer caloria
        Calorias[Control] <- caloria
        Escribir "--------------------------------------"
    FinPara
FinFuncion

Funcion TotalSemana <- CalcularTotal(Calorias, NumDias)
	Definir TotalSemana Como Real
    TotalSemana <- 0
    Para Control <- 1 Hasta NumDias Con Paso 1 Hacer
        TotalSemana <- TotalSemana + Calorias[Control]
    FinPara
FinFuncion

Funcion MostrarCalorias(Calorias, Dias, NumDias)
    Para Control <- 1 Hasta NumDias Con Paso 1 Hacer
        Escribir "El consumo de calorias el dia ", Dias[Control], " fue: ", Calorias[Control]
    FinPara
FinFuncion

Funcion MostrarTotal(TotalSemana)
    Escribir "El total de calorias consumidas en la semana es: ", TotalSemana
FinFuncion

Funcion ModificarCalorias(Calorias, Dias, NumDias)
    Definir Posicion Como Entero
    Definir caloria Como Real
    
    Escribir "Ingrese el número del dia que desea modificar (1-", NumDias, "):"
    Leer Posicion
    
    Si Posicion >= 1 Y Posicion <= NumDias Entonces
        Escribir "Ingrese las nuevas calorías consumidas el dia ", Dias[Posicion], ": "
        Leer caloria
        Calorias[Posicion] <- caloria
    SiNo
        Escribir "Dia no existente."
    FinSi
FinFuncion


Algoritmo CaloriasSemanaArray
    Definir NumDias, Respuesta Como Entero
    Definir Calorias, TotalSemana Como Real
    Definir Dias Como Cadena
    
    NumDias <- 7
    Dimension Calorias[NumDias]
    Dimension Dias[NumDias]
    
    Dias[1] <- "lunes"
    Dias[2] <- "martes"
    Dias[3] <- "miercoles"
    Dias[4] <- "jueves"
    Dias[5] <- "viernes"
    Dias[6] <- "sabado"
    Dias[7] <- "domingo"
    
    Repetir
        Escribir "--------- MENÚ ---------"
        Escribir "1. Ingresar calorias de la semana"
        Escribir "2. Mostrar calorias diarias"
        Escribir "3. Mostrar total semanal"
        Escribir "4. Modificar calorias de un dia"
        Escribir "5. Salir"
        Escribir "------------------------"
        Escribir "Ingrese una opción del menú (1-5):"
        Leer Respuesta
        Escribir "------------------------"
        
        Segun Respuesta Hacer
            Caso 1:
                LeerCalorias(Calorias, Dias, NumDias)
            Caso 2:
                MostrarCalorias(Calorias, Dias, NumDias)
            Caso 3:
				TotalSemana <- CalcularTotal(Calorias, NumDias)
                MostrarTotal(TotalSemana)
            Caso 4:
                ModificarCalorias(Calorias, Dias, NumDias)
            Caso 5:
                Escribir "Gracias por usar nuestro programa. Saliendo del programa..."
            De Otro Modo:
                Escribir "Ingrese una opción válida."
        FinSegun
    Hasta Que Respuesta = 5
FinAlgoritmo

