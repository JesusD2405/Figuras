Proceso Proyecto_Figuras
	
	// Definicion De Varibles
	
	Dimension matriz[10,10];		  		// Matriz Donde Se Generan las Figuras
	Definir simbolo Como Caracter;    		// Caracter A Dibujar En La Matriz
	Definir i, j Como Entero;		  		// Para Manejar Los Ciclos Y Recorrer La Matriz
	Definir filas, columnas Como Entero;	// Para Manejar La Dimension De La Matriz
	Definir mitad Como Entero;				// Para Manejar La Mitad De La Matriz
	Definir orden Como Entero;				// Para Manejar El Orden De La Figura En La Matriz
	Definir posicion Como Entero;			// Para Manejar Una Posicion Especifica En La Matriz
	Definir resp Como Entero;		  		// Respuesta A Obtener En El Menu
	
	
	// Inicializacion De Variables
	
	simbolo<- ' ';
	i<- 0;
	j<- 0;
	filas<- 10;			// Numero De Filas De La Matriz
	columnas<- 10;		// Numero De Columnas De La Matriz
	mitad<- 0;
	orden<- 3;
	posicion<- 0;
	resp<- 0;
	
	// Inicio Del Programa
	
	Repetir
		
		Limpiar Pantalla;
		
		Escribir ("  +--------------_.-* Figuras Geometricas *-._--------------+");
		Escribir ("  |                                                         |");
		Escribir ("  |  Menú:                                                  |");
		Escribir ("  |                                                         |");
		Escribir ("  |  1. Circulo                                             |");
		Escribir ("  |  2. Triangulo                                           |");
		Escribir ("  |  3. Cuadrado                                            |");
		Escribir ("  |  4. Rombo                                               |");
		Escribir ("  |  5. Salir                                               |");
		Escribir ("  |                                                         |");
		Escribir ("  |  Opción:                                                |");
		Escribir ("  +---------------------------------------------------------+");
		Leer resp;
		
		Segun resp Hacer
			
			1:
				Limpiar Pantalla;
				
				Escribir (" Ingrese Un Caracter a Dibujar: ");
				leer simbolo;
				
				Para i<-1 Hasta filas Con Paso 1 Hacer
					
					Para j<-1 Hasta columnas Con Paso 1 Hacer
						
						matriz[i,j]<- simbolo;
						
						Si (i=1) Entonces	
							
							Si (j=1 | j=2 | j=columnas-1 | j=columnas) Entonces	// Parte Superior Inferior
								
								Si (j=1) Entonces
									
									Escribir (" "); 								// Para Saltar Linea
									
								Fin Si
								
								Escribir Sin Saltar (" ");		  			    // Para Darle un Espacio
								Escribir Sin Saltar (" ");			            // Coloca Un Espacio
								
							Sino
								
								Escribir Sin Saltar (" ");		  			    // Para Darle un Espacio
								Escribir Sin Saltar matriz[i,j];
								
							FinSi
							
						Sino
							
							Si (i=filas) Entonces // Parte Inferior
								
								Si (j=1 | j=2 | j=columnas-1 | j=columnas) Entonces	// Borde Superior e Inferior
									
									Si (j=1) Entonces
										
										Escribir (" "); 								// Para Saltar Linea
										
									Fin Si
									
									Escribir Sin Saltar (" ");		  			    // Para Darle un Espacio
									Escribir Sin Saltar (" ");			            // Coloca Un Espacio
									
								Sino
									
									Escribir Sin Saltar (" ");		  			    // Para Darle un Espacio
									Escribir Sin Saltar matriz[i,j];
									
								FinSi
								
							FinSi
							
							Si (i=2 & j=1)Entonces
								
								Escribir (" "); 							// Para Saltar Linea
								
								Escribir Sin Saltar (" ");		    		// Para Darle un Espacio
								Escribir Sin Saltar (" ");					// Coloca Un Espacio
								
							Sino
								
								Si(i=2 & j>=2 & j<=columnas-1)Entonces
									
									Escribir Sin Saltar (" ");		  			   // Para Darle un Espacio
									Escribir Sin Saltar matriz[i,j];
									
								FinSi
								
							FinSi
							
							Si (i=filas-1 & j=1)Entonces
								
								Escribir (" "); 							// Para Saltar Linea
								
								Escribir Sin Saltar (" ");		    		// Para Darle un Espacio
								Escribir Sin Saltar (" ");					// Coloca Un Espacio
								
							Sino
								
								Si(i=filas-1 & j>=2 & j<=columnas-1)Entonces
									
									Escribir Sin Saltar (" ");		  			   // Para Darle un Espacio
									Escribir Sin Saltar matriz[i,j];
									
								FinSi
								
							FinSi
							
							Si (i>2 & i<columnas-2) Entonces
								
								Si (j=1) Entonces
									
									Escribir (" ");
									
									Escribir Sin Saltar (" ");
									Escribir Sin Saltar matriz[i,j];
									
								Sino
									
									Escribir Sin Saltar (" ");
									Escribir Sin Saltar matriz[i,j];
									
								FinSi
								
							FinSi
							
						FinSi
						
					FinPara
					
				FinPara
				
				Esperar Tecla;
				
				
			2:
				Limpiar Pantalla;
				
				Escribir (" Ingrese Un Caracter a Dibujar: ");
				leer simbolo;
				
				mitad<- columnas/2;
				posicion<- mitad;
				orden<- mitad;
				
				Para i<-1 Hasta filas Con Paso 1 Hacer
					
					Para j<-1 Hasta columnas Con Paso 1 Hacer
						
						matriz[i,j]<- simbolo;
						
						Si (j=1) Entonces
							
							Escribir (" ");		// Para Saltar Linea
							
						FinSi
						
						Si (i<=mitad) Entonces 	// Para Imprimir La Parte Superior
							
							Si (j>=posicion & j<=orden) Entonces
								
								Escribir Sin Saltar (" ");
								Escribir Sin Saltar matriz[i,j];
								
							Sino
								
								Si (j=columnas-1) Entonces
									
									orden<- orden+1;
									posicion<- posicion-1;
									
								Fin Si
								
								Escribir Sin Saltar (" ");
								Escribir Sin Saltar (" ");
								
							Fin Si
							
						FinSi
						
					FinPara
					
				FinPara
				
				Esperar Tecla;
				
			3:
				Limpiar Pantalla;
				
				Escribir (" Ingrese Un Caracter a Dibujar: ");
				leer simbolo;
				
				Para i<-1 Hasta filas Con Paso 1 Hacer
					
					Para j<-1 Hasta columnas Con Paso 1 Hacer
						
						matriz[i,j]<- simbolo;
						
						Si (j=1) Entonces
						
							Escribir (" "); 					// Para Saltar Linea
							
							Escribir Sin Saltar (" ");		    // Para Darle un Espacio
							Escribir Sin Saltar matriz[i,j];
							
						Sino
							
							Escribir Sin Saltar (" ");
							Escribir Sin Saltar matriz[i,j];
						
						FinSi
						
					FinPara
					
				FinPara
				
				Esperar Tecla;
				
			4:
				Limpiar Pantalla;
				
				Escribir (" Ingrese Un Caracter a Dibujar: ");
				leer simbolo;
				
				mitad<- columnas/2;
				posicion<- mitad;
				orden<- mitad;
				
				Para i<-1 Hasta filas Con Paso 1 Hacer
					
					Para j<-1 Hasta columnas Con Paso 1 Hacer
						
						matriz[i,j]<- simbolo;
						
						Si (j=1) Entonces
							
							Escribir (" ");		// Para Saltar Linea
							
						FinSi
						
						Si (i<=mitad) Entonces 	// Para Imprimir La Parte Superior
							
							Si (j>=posicion & j<=orden) Entonces
								
								Escribir Sin Saltar (" ");
								Escribir Sin Saltar matriz[i,j];
								
							Sino
								
								Si (j=columnas-1) Entonces
									
									orden<- orden+1;
									posicion<- posicion-1;
									
								Fin Si
								
								Escribir Sin Saltar (" ");
								Escribir Sin Saltar (" ");
								
							Fin Si
							
						Sino
							
							// Para Imprimir Parte Inferior
							
							Si (j>=posicion & j<=orden) Entonces
								
								Escribir Sin Saltar (" ");
								Escribir Sin Saltar matriz[i,j];
								
							Sino
								
								Escribir Sin Saltar (" ");
								Escribir Sin Saltar (" ");
								
							Fin Si
							
						FinSi
						
					FinPara
					
					Si (i>mitad) Entonces
						
						orden<- orden-1;
						posicion<- posicion+1;
						
					Fin Si
					
				FinPara
				
				Esperar Tecla;
				
			5:
				resp<- 0;	// Respuesta Es Igual a 0 para Salir del Menu Principal
				
			De Otro Modo:
				
				Escribir ("Respuesta Invalida! ");
				
				Esperar 2 Segundos;			
		FinSegun
		
	Hasta Que resp=0;
	
	limpiar pantalla;
	
FinProceso