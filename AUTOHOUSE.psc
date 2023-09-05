Algoritmo GestionDeEstacionamiento
    Definir autosEstacionados como Real
    Definir precioPorHora como Real
    precioPorHora <- 500  // Cambiar valor hora según corresponda
	
    autosEstacionados <- 0
	
    Dimension matriculas[100]
    Dimension horasIngreso[100]
	
    Mientras opcion <> 4
        Escribir "#########################################################"
		Escribir "## BIENVENIDO AL SISTEMA DE GESTIÓN DE ESTACIONAMIENTO ##"
		Escribir "#########################################################"
		Escribir "   Horario de atención: las 24hs los 365 días del año.   "
		Escribir "---------------------------------------------------------"
		Escribir "MENÚ PRINCIPAL                                 AUTO HOUSE"
		Escribir "---------------------------------------------------------"
        Escribir "1. Registrar entrada de vehículo."
        Escribir "2. Registrar salida de vehículo."
        Escribir "3. Generar informe de Vehículos estacionados."
        Escribir "4. Salir."
        Escribir "Elija una opción: "
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Si autosEstacionados < 100 Entonces
                    autosEstacionados <- autosEstacionados + 1
                    Escribir "Ingrese la matrícula del vehículo: "
                    Leer matricula
                    Escribir "Ingrese la hora de ingreso (en formato hhmm): "
                    Leer horaIngreso
                    matriculas[autosEstacionados] <- matricula
                    horasIngreso[autosEstacionados] <- horaIngreso
					Escribir " "
					Escribir "---------------------------------------------------------"
                    Escribir "Entrada registrada exitosamente."
					Escribir "---------------------------------------------------------"
					Escribir " "
					Esperar 2 segundos
                Sino
					Escribir " "
					Escribir "---------------------------------------------------------"
                    Escribir "El estacionamiento está lleno."
					Escribir "---------------------------------------------------------"
					Escribir " "
					Esperar 2 segundos
                FinSi
				
            Caso 2:
                Si autosEstacionados > 0 Entonces
                    Escribir "Ingrese la matrícula del vehículo que sale: "
                    Leer matriculaSalida
                    Encontrado <- Falso
                    Para i <- 1 Hasta autosEstacionados Hacer
                        Si matriculas[i] = matriculaSalida Entonces
                            Encontrado <- Verdadero
							Escribir "Ingrese la hora de salida (en formato hhmm): "
							Leer horaSalida
							tiempoEstacionado <- (horaSalida - horasIngreso[i]) / 100
							costo <- tiempoEstacionado * precioPorHora
							Escribir " "
							Escribir "---------------------------------------------------------"
							Escribir "Tiempo estacionado: ", tiempoEstacionado, " horas"
							Escribir "Tarifa a pagar: $", costo
							matriculas[i] <- matriculas[autosEstacionados]
							horasIngreso[i] <- horasIngreso[autosEstacionados]
							autosEstacionados <- autosEstacionados - 1
							Escribir "Salida registrada exitosamente."
							Escribir "---------------------------------------------------------"
							Escribir " "
							Esperar 2 segundos
						FinSi
                    FinPara
                    Si No Encontrado Entonces
						Escribir " "
						Escribir "---------------------------------------------------------"
                        Escribir "Matrícula no encontrada."
						Escribir "---------------------------------------------------------"
						Escribir " "
						Esperar 2 segundos
                    FinSi
                Sino
					Escribir " "
					Escribir "---------------------------------------------------------"
                    Escribir "No hay autos estacionados."
					Escribir "---------------------------------------------------------"
					Escribir " "
					Esperar 2 segundos
                FinSi
				
            Caso 3:
                Si autosEstacionados > 0 Entonces
					Escribir "Cantidad de autos estacionados: ", autosEstacionados
					Escribir " "
					Para i <- 1 Hasta autosEstacionados Hacer
						Escribir "---------------------------------------------------------"
						Escribir "Auto ", i, ": Matrícula ", matriculas[i], " - Hora de ingreso ", horasIngreso[i]
						Escribir "---------------------------------------------------------"
					FinPara
					Escribir " "
					Esperar 2 segundos
				Sino
					Escribir " "
					Escribir "---------------------------------------------------------"
					Escribir "No hay autos estacionados."
					Escribir "---------------------------------------------------------"
					Escribir " "
					Esperar 2 segundos
				FinSi
				
            Caso 4:
				Escribir " "
                Escribir "Gracias por usar el sistema de gestión de estacionamiento."
				
			De otro Modo:
				Escribir " "
				Escribir "---------------------------------------------------------"
                Escribir "Opción incorrecta. Por favor, elija una opción válida."
				Escribir "---------------------------------------------------------"
				Escribir " "
				Esperar 2 segundos
				
        FinSegun
	
	FinMientras	
	
FinAlgoritmo
