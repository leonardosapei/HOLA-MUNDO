Algoritmo Estacionamiento
	Definir vehiculos como Matriz de Caracter
	Definir hora_entrada como Matriz de Entero
	Definir hora_salida como Matriz de Entero
	Definir tarifa_base como Real
	Definir tarifa_hora_extra como Real
	Definir menu como Entero
	
	tarifa_base = 5.0
	tarifa_hora_extra = 3.0
	
	Mientras verdadero
		Mostrar "Bienvenidos a AUTO HOUSE"
		Mostrar "Menú:"
		Mostrar "1. Registrar entrada"
		Mostrar "2. Registrar salida"
		Mostrar "3. Generar informe"
		Mostrar "4. Salir"
		Leer menu
		
		Segun menu Hacer
			1:
				RegistrarEntrada(vehiculos, hora_entrada)
			2:
				RegistrarSalida(vehiculos, hora_salida)
			3:
				GenerarInforme(vehiculos, hora_entrada, hora_salida, tarifa_base, tarifa_hora_extra)
			4:
				Mostrar "Saliendo del programa."
			Fin
		De Otro Modo:
			Mostrar "Opción no válida."
	Fin Segun
Fin Mientras
Fin Algoritmo

