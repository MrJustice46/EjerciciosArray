Funcion GuardarNumeros <- LeerNumeros(lista)
	Definir GuardarNumeros Como Entero
	Para control <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese el valor del numero ", Control, " :"
		Leer GuardarNumeros
		lista[control] <- GuardarNumeros
	FinPara
FinFuncion

Funcion mostrarNumeros(lista)
	Para control<- 1 hasta 5 Con Paso 1 Hacer
		escribir "El dato guardado en el numero ",control, " es:", lista[control]
	FinPara
FinFuncion

Funcion resultado <- Sumar(lista)
	resultado <- 0
	Para control <- 1 Hasta 5 Con Paso 1 Hacer
		resultado <- resultado + lista[control]
	FinPara
FinFuncion

Funcion ModificarDatos(lista)
	Definir Posicion, GuardarNumeros Como Entero
	Escribir "Ingrese la posicion del numero que desea modificar (1-5)"
	Leer Posicion
	Si Posicion >= 1 Y Posicion <= 5 Entonces
		Escribir "Ingrese el nuevo numero"
		Leer GuardarNumeros
		lista[posicion] <- GuardarNumeros
	SiNo
		Escribir "Esta posicion no existe"
	FinSi
FinFuncion

Funcion Mensaje <- HacerMensaje(Suma)
	Definir Mensaje como cadena
	Mensaje <- "la suma de los 5 numeros es de: " + ConvertirATexto(Suma)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo SumaNumerosFuncion
	Definir num, suma, lista, Respuesta Como Entero
	Definir mensaje como cadena
	
	Dimension lista[5]
	suma <- 0
	Repetir
		Escribir "--------- MENÚ ---------"
		Escribir "1. Guardar numeros"
		Escribir "2. Mostrar numeros"
		Escribir "3. Sumar numeros"
		Escribir "4. Modificar numeros"
		Escribir "5. Salir"
		Escribir "------------------------"
		
		Escribir "Ingrese una opcion del menu (1-4)"
		Leer Respuesta
		
		Segun Respuesta Hacer
			Caso 1: 
				GuardarNumeros <- LeerNumeros(lista)
				
			Caso 2: 
				mostrarNumeros(lista)
				
			Caso 3: 
				suma <- Sumar(lista)
				ImprimirMensaje("la suma de los 5 numeros es de: " + ConvertirATexto(suma))
				
			Caso 4:
				ModificarDatos(lista)
		FinSegun
	Hasta Que Respuesta = 5
	
	ImprimirMensaje("Saliendo, gracias por usar nuestro programa de suma")
FinAlgoritmo
