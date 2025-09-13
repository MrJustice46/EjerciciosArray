Funcion LeerMaterias(Materias, Nota)
	Definir Materia Como Cadena
	Para ControlMateria <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el nombre de la materia ", ControlMateria, ": "
        Leer Materia
		Materias[ControlMateria] <- Materia
		Escribir "----------------------------"
		LeerNotas(Nota, ControlMateria)
	FinPara
FinFuncion

Funcion LeerNotas(Nota, ControlMateria)
	Definir Notas Como Real
	Para ControlNota <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese la nota ", ControlNota, " de la materia ", ControlMateria ": "
		Leer Notas
		Nota[controlMateria, ControlNota] <- Notas
		Escribir "----------------------------"
	FinPara
FinFuncion

Funcion mostrarMateriasNotas(Materias, Nota)
	Para ControlMateria<- 1 hasta 3 Con Paso 1 Hacer
		escribir "La materia guardada ",Materias[ControlMateria], " tiene estas notas: "
		Para ControlNota <- 1 Hasta 3 Con Paso 1 Hacer
			Escribir "Nota ", ControlNota, ": ", Nota[ControlMateria, ControlNota]
		FinPara
	FinPara
FinFuncion

Funcion ModificarMateria(Materias)
    Definir Posicion Como Entero
    Escribir "Ingrese la posicion de la materia que desea modificar (1-3): "
    Leer Posicion
    Si Posicion >= 1 Y Posicion <= 3 Entonces
        Escribir "Ingrese el nuevo nombre de la materia: "
        Leer Materias[Posicion]
    SiNo
        Escribir "La posicion no existe."
    FinSi
FinFuncion

Funcion ModificarNota(Nota, Materias)
    Definir PosicionMateria, PosicionNota Como Entero
    Escribir "Ingrese la posicion de la materia (1-3): "
    Leer PosicionMateria
    
    Si PosicionMateria >= 1 Y PosicionMateria <= 3 Entonces
        Escribir "Ingrese la posicion de la nota de ", Materias[PosicionMateria], " que desea modificar (1-3): "
        Leer PosicionNota
        Si PosicionNota >= 1 Y PosicionNota <= 3 Entonces
            Escribir "Ingrese la nueva nota: "
            Leer Nota[PosicionMateria, PosicionNota]
        SiNo
            Escribir "La posicion de la nota no existe."
        FinSi
    SiNo
        Escribir "La posicion de la materia no existe."
    FinSi
FinFuncion

Funcion PromediarMaterias(Nota, Promedios)
    Definir Suma Como Real
    
    Para ControlMateria <- 1 Hasta 3 Con Paso 1 Hacer
        Suma <- 0
        Para ControlNota <- 1 Hasta 3 Con Paso 1 Hacer
            Suma <- Suma + Nota[ControlMateria, ControlNota]
        FinPara
        Promedios[ControlMateria] <- Suma / 3
    FinPara
FinFuncion


Funcion MostrarPromedios(Materias, Promedios)
    Para ControlMateria <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "El promedio de la materia ", Materias[ControlMateria], " es: ", Promedios[ControlMateria]
    FinPara
FinFuncion


Funcion MostrarPromedio(Materia, Promedios)
	Para ControlMateria <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "El promedio de la materia ", Materia[ControlMateria], " es ", Promedios[ControlMateria] 
	FinPara
FinFuncion

Funcion Mensaje <- HacerMensaje(Materia, promedio)
	Definir Mensaje como cadena
	Mensaje <- "El promedio de " + Materia + " es: " + ConvertirATexto(promedio) 
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo PromedioMateriasFunciones
    Definir OpcionModificar, Respuesta Como Entero
    Definir Materias Como Caracter
    
	Dimension Materias[3]
	Dimension Nota[3, 3]
	Dimension Promedios[3]
	
	Repetir
		Escribir "--------- MENÚ ---------"
		Escribir "1. Guardar materias y notas"
		Escribir "2. Mostrar materias y notas"
		Escribir "3. Promedio de notas"
		Escribir "4. Modificar notas y materias"
		Escribir "5. Salir"
		Escribir "------------------------"
		
		Escribir "Ingrese una opcion del menu (1-5)"
		Leer Respuesta
		
		Segun Respuesta Hacer
			Caso 1: 
				LeerMaterias(Materias, Nota)
			Caso 2: 
				mostrarMateriasNotas(Materias, Nota)
				
			Caso 3: 
				PromediarMaterias(Nota, Promedios)
				MostrarPromedios(Materias, Promedios)
			Caso 4:
				Escribir "¿Qué desea modificar?"
				Escribir "1. Materias"
				Escribir "2. Notas"
				Leer OpcionModificar
				Escribir "------------------------"
				
				Segun OpcionModificar Hacer
					Caso 1: 
						ModificarMateria(Materias)
						
					Caso 2: 
						ModificarNota(Nota, Materias)
						
					De Otro Modo:
						Escribir "Opcion invalida"
				FinSegun
		FinSegun
	Hasta Que Respuesta = 5
	
	ImprimirMensaje("Saliendo, gracias por usar nuestro programa de promedios")
FinAlgoritmo
