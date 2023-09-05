Algoritmo GestionDeEstacionamiento
    Definir autosEstacionados como Real
    Definir precioPorHora como Real
    precioPorHora <- 500  // Cambiar valor hora seg�n corresponda
	
    autosEstacionados <- 0
	
    Dimension matriculas[100]
    Dimension horasIngreso[100]
	
    Mientras opcion <> 4
        Escribir "#########################################################"
		Escribir "## BIENVENIDO AL SISTEMA DE GESTI�N DE ESTACIONAMIENTO ##"
		Escribir "#########################################################"
		Escribir "   Horario de atenci�n: las 24hs los 365 d�as del a�o.   "
		Escribir "---------------------------------------------------------"
		Escribir "MEN� PRINCIPAL                                 AUTO HOUSE"
		Escribir "---------------------------------------------------------"
        Escribir "1. Registrar entrada de veh�culo."
        Escribir "2. Registrar salida de veh�culo."
        Escribir "3. Generar informe de Veh�culos estacionados."
        Escribir "4. Salir."
        Escribir "Elija una opci�n: "
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Si autosEstacionados < 100 Entonces
                    autosEstacionados <- autosEstacionados + 1
                    Escribir "Ingrese la matr�cula del veh�culo: "
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
                    Escribir "El estacionamiento est� lleno."
					Escribir "---------------------------------------------------------"
					Escribir " "
					Esperar 2 segundos
                FinSi
				
            Caso 2:
                Si autosEstacionados > 0 Entonces
                    Escribir "Ingrese la matr�cula del veh�culo que sale: "
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
                        Escribir "Matr�cula no encontrada."
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
						Escribir "Auto ", i, ": Matr�cula ", matriculas[i], " - Hora de ingreso ", horasIngreso[i]
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
                Escribir "Gracias por usar el sistema de gesti�n de estacionamiento."
				
			De otro Modo:
				Escribir " "
				Escribir "---------------------------------------------------------"
                Escribir "Opci�n incorrecta. Por favor, elija una opci�n v�lida."
				Escribir "---------------------------------------------------------"
				Escribir " "
				Esperar 2 segundos
				
        FinSegun
	
	FinMientras	
	
FinAlgoritmo
