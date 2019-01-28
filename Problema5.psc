Algoritmo Problema_5
	ce <- 1879
	antivirus <- 490
	laptop <- 6190
	Escribir 'Temporada de regreso a clases!'
	Escribir 'Seleccione cuantos productos quiere'
	Escribir 'SOLAMENTE PUEDE ELEGIR MAXIMO 2'
	Leer CP
	Si CP<=2 Entonces
		Escribir 'SELECCION DE PRODUCTOS:'
		Escribir ' 1) Combo estudio: Escritorio para computo + Silla secretarial $1,879'
		Escribir lista_de_expresiones
		Escribir '2) Antivirus: Licencia de 1 año para un usuario $490.00'
		Escribir 'Nota: 30% descuesto del 25 al 31 de enero.'
		Escribir lista_de_expresiones
		Escribir '3) Laptop HP: 14 pulgadas, intel celeron, DD 500GB y 4GB RAM $6,190'
		Escribir 'Nota: De regalo una mochila o audifonos inalambricos.'
		Escribir lista_de_expresiones
		Si CP=2 Entonces
			Escribir 'Seleccione sus productos.'
			Leer DosProductos
			Segun DosProductos  Hacer
				1:
					Escribir 'COMBO ESTUDIO seleccionado:$',ce
					Escribir '¿Cual es su siguiente producto?'
					Escribir '2) Antivirus  3) Laptop'
					Leer Producto2
					Segun Producto2  Hacer
						2:
							Escribir 'COMBO ESTUDIO:$',ce
							Escribir 'ANTIVIRUS:$',antivirus
							Escribir '¿Gusta usar el mismo modo de pago para ambos productos?'
							Escribir '1)SI  2)NO'
							Leer RP
							Si RP=1 Entonces
								Escribir 'Se encuentra entre el 25 y 31 de enero?'
								Escribir '1)SI  2)NO'
								Leer fecha
								Si fecha=1 Entonces
									Escribir 'Grandioso, se aplico un descuento del 30% a antivirus.'
									Escribir 'Seleccione metodo de pago'
									Escribir '1)EFECTIVO  2)TARJETA DE CREDITO'
									Leer MP
									descuento <- (30*antivirus)/100
									cuenta1 <- ce+descuento
									Si MP=1 Entonces
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'ANTIVIRUS:$',descuento,' de:$',antivirus
										Escribir 'Total:$',cuenta1
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta1 Entonces
											cambio1 <- pago-cuenta1
											Escribir 'Su cambio es:$',cambio1
										SiNo
											Escribir 'Efectivo insuficiente.'
										FinSi
									SiNo
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'ANTIVIRUS:$',descuento
										Escribir 'Total:$',cuenta1
										Escribir 'Se han cargado:$',cuenta1,' a su tarjeta de credito.'
									FinSi
								SiNo
									Escribir 'Seleccione el metodo de pago.'
									Escribir '1)EFECTIVO  2)TARJETA DE CREDITO'
									Leer MP
									cuenta <- ce+antivirus
									Si MP=1 Entonces
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'Total:$',cuenta
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											cambio <- pago-cuenta
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente.'
										FinSi
									SiNo
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'Total:$',cuenta
									FinSi
								FinSi
							SiNo
								Escribir '¿Se encuentra entre el 25 y 31 de enero?'
								Escribir '1)SI  2)NO'
								Leer fecha
								Si fecha=2 Entonces
									Escribir '¿Gusta pagar el COMBO ESTUDIO con efectivo?'
									Escribir '1) SI  2)NO'
									Leer EP
									Si EP=1 Entonces
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=ce Entonces
											cambio <- pago-ce
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',antivirus,' COMBO ESTUDIO a su tarjeta de credito.'
										SiNo
											Escribir 'Efectivo insuficiente.'
											Escribir '¿Gusta cargar ambos productos a su tarjeta de credito?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- ce+antivirus
												Escribir 'Se cargaron:$',cuenta,' a su tarjeta de credito.'
											SiNo
												Escribir 'Transaccion no completada.'
											FinSi
										FinSi
									SiNo
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=antivirus Entonces
											cambio <- pago-antivirus
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',ce,' COMBO ESTUDIO a su tarjeta de credito.'
										SiNo
											Escribir 'Efectivo insuficiente.'
											Escribir '¿Gusta pagar ambos productos con tarjeta de credito?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- ce+antivirus
												Escribir 'Se cargaron:$',cuenta,' a su tarjeta de credito.'
											SiNo
												Escribir 'Transaccion no completada.'
											FinSi
										FinSi
									FinSi
								SiNo
									Escribir 'Se ha aplicado un descuento del 30% a ANTIVIRUS.'
									descuento <- (30*antivirus)/100
									Escribir 'Precio con descuento de ANTIVIRUS:',descuento
									Escribir '¿Gusta pagar el COMBO ESTUDIO con efectivo?'
									Escribir '1)SI  2)NO'
									Leer EP
									Si EP=1 Entonces
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=ce Entonces
											cambio <- pago-ce
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',descuento,' a su tarjeta de credito.'
											Escribir 'ANTIVIRUS:$',descuento,' con el 30% de descuento.'
										SiNo
											Escribir 'Efectivo insuficiente.'
											Escribir '¿Gusta pagar ambos productos con tarjeta de credito?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- ce+descuento
												Escribir 'Se cargaron:$',cuenta,' a su tarjeta de credito.'
												Escribir 'COMBO ESTUDIO:$',ce
												Escribir 'ANTIVIRUS:$',descuento,' con el 30% de descuento.'
											SiNo
												Escribir 'Transaccion no compeltada.'
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						3:
							Escribir 'COMBO ESTUDIO:$',ce
							Escribir 'LAPTOP:$',laptop
							Escribir '¿Gusta usar el mismo metodo de pago para ambos productos?'
							Escribir '1)SI  2)NO'
							// respuesta pago
							Leer RP
							Si RP=1 Entonces
								Escribir 'Seleccione metodo de pago.'
								Escribir '1)EFECTIVO 2)TARJETA'
								Leer MP
								cuenta <- laptop+ce
								Si MP=1 Entonces
									Escribir 'Felicidades, LAPTOP te da a elegir un regalo entre audifonos y mochila.'
									Escribir 'Seleccione su regalo.'
									Escribir '1)AUDIFONOS  2)MOCHILA'
									Leer regalo
									Si regalo=1 Entonces
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'LAPTOP:$',laptop
										Escribir 'Total:$',cuenta
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											Escribir 'Regalo: Audifonos inalambricos.'
											cambio <- pago-cuenta
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente.'
										FinSi
									SiNo
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'LAPTOP:$',laptop
										Escribir 'Total:$',cuenta
										Escribir '¿con cuento desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											Escribir 'Regalo: Mochila'
											cambio <- pago-cuenta
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente.'
										FinSi
									FinSi
								SiNo
									Escribir 'Felicidades, LAPTOP te da a elegir un regalo entre MOCHILA y AUDIFONOS INALAMBRICOS'
									Escribir 'Seleccione su regalo.'
									Escribir '1)AUDIFONOS  2)MOCHILA'
									Leer regalo
									Si regalo=1 Entonces
										Escribir 'Audifonos de regalo.'
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'LAPTOP:$',laptop
										Escribir 'Total:$',cuenta
										Escribir 'Se cargaron:$',cuenta,' a su tarjeta de credito.'
									SiNo
										Escribir 'Mochila de regalo.'
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'LAPTOP:$',laptop
										Escribir 'Total:$',cuenta
										Escribir 'Se cargaron:$',cuenta,' a su tarjeta de credito'
									FinSi
								FinSi
							SiNo
								Escribir '¿Gustas pagar COMBO ESTUDIO con efectivo?'
								Escribir '1)SI  2)NO'
								Leer EP
								Si EP=1 Entonces
									Escribir 'COMBO ESTUDIO:$',ce
									Escribir '¿Con cuanto desea pagar?'
									Leer pago
									Si pago>=ce Entonces
										Escribir 'Seleccione su regalo:'
										Escribir '1)MOCHILA  2)AUDIFONOS INALAMBRICOS'
										Leer regalo
										cambio <- pago-ce
										Si regalo=1 Entonces
											Escribir 'Regalo: Mochila'
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',laptop,' a su tarjeta'
										SiNo
											Escribir 'Regalo: Audifonos inalambricos'
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',laptop,' a su tarjeta'
										FinSi
									SiNo
										Escribir 'Efectivo insuficiente.'
										Escribir '¿Desea cargar COMBO ESTUDIO a su tarjeta de credito?'
										Escribir '1)SI  2)NO'
										Leer EI
										Si EI=1 Entonces
											Escribir 'Seleccione su regalo'
											Escribir '1) MOCHILA  2)AUDIFONOS'
											Leer regalo
											cuenta <- ce+laptop
											Si regalo=1 Entonces
												Escribir 'Regalo: Mochila'
												Escribir 'Total cargado a su cuenta:$',cuenta
											SiNo
												Escribir 'Regalo: Audifonos inalambricos'
												Escribir 'Total cargado a su tarjeta de credito:$',cuenta
											FinSi
										SiNo
											Escribir 'Transaccion no completada.'
										FinSi
									FinSi
								FinSi
							FinSi
					FinSegun
				2:
					Escribir 'ANTIVIRUS SELECCIONADO'
					Escribir '¿Cual es el siguiente producto?'
					Escribir '1) COMBO ESTUDIO  3)LAPTOP'
					Leer Producto2
					Segun Producto2  Hacer
						1:
							Escribir 'ANTIVIRUS:$',antivirus
							Escribir 'COMBO ESTUDIO:$',ce
							Escribir '¿Se encuentra entre el 25 y 31 de enero?'
							Escribir '1) SI  2)NO'
							Leer fecha
							Si fecha=1 Entonces
								Escribir 'Se aplica 30% de descuento en ANTIVIRUS'
								descuento <- (30*antivirus)/100
								Escribir '¿Gusta usar el mismo modo de pago para ambos productos?'
								Escribir '1)SI  2)NO'
								Leer RP
								Si RP=1 Entonces
									Escribir 'Seleccione metodo de pago'
									Escribir '1)EFECTIVO  2)TARJETA DE CREDITO'
									Leer MP
									cuenta1 <- descuento+ce
									Si MP=1 Entonces
										Escribir 'ANTIVIRUS:$',descuento,' descuento aplicado'
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'Total:$',cuenta1
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta1 Entonces
											cambio <- pago-cuenta1
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente.'
										FinSi
									SiNo
										Escribir 'ANTIVIRUS:$',descuento
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'Se cargo un total de:$',cuenta1,' a su tarjeta de credito'
									FinSi
								SiNo
									Escribir '¿Gusta pagar ANTIVIRUS con efectivo?'
									Escribir '1)SI  2)NO'
									Leer RP1
									Si RP1=1 Entonces
										Escribir 'ANTIVIRUS:$',descuento
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=descuento Entonces
											cambio <- pago-descuento
											Escribir 'Su cambio es:$',descuento
											Escribir 'Se cargaron:$',ce,' a su tarjeta de credito.'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Gusta pagar con tarjeta?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- descuento+ce
												Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito.'
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									SiNo
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=ce Entonces
											cuenta <- pago-ce
											Escribir 'Su cambio es:$',cuenta
											Escribir 'Se cargaron:$',descuento,' a su tarjeta'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Desea pagar COMBO ESTUDIO con tarjeta?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- descuento+ce
												Escribir 'Se cargo un tota. de:$',cuenta,' a su tarjeta'
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir '¿Gusta usar el mismo metodo de pago para ambos productos?'
								Escribir '1)SI  2)NO'
								Leer RP
								Si RP=1 Entonces
									Escribir 'Seleccione el metodo de pago'
									Escribir '1)EFECTIVO 2)TARJETA'
									Leer MP
									cuenta <- antivirus+ce
									Si MP=1 Entonces
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'Total:$',cuenta
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											cambio <- pago-cuenta
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente'
										FinSi
									SiNo
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta'
									FinSi
								SiNo
									Escribir '¿Gusta pagar el ANTIVIRUS con efectivo?'
									Escribir '1)SI  2)NO'
									cuenta <- antivirus+ce
									Leer RP
									Si RP=1 Entonces
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=antivirus Entonces
											cambio <- pago-antivirus
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargo:$',ce,' a su tarjeta'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												Escribir 'ANTIVIRUS:$',antivirus
												Escribir 'COMBO ESTUDIO:$',ce
												Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta'
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									SiNo
										Escribir 'COMBO ESTUDIO:$',ce
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=ce Entonces
											cambio <- pago-ce
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargo:$',antivirus,' a su tarjeta'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												Escribir 'COMBO ESTUDIO:$',ce
												Escribir 'ANTIVIRUS:$',antivirus
												Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta'
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						3:
							Escribir 'ANTIVIRUS:$',antivirus
							Escribir 'LAPTOP:$',laptop
							Escribir '¿Se encuentra entre el 25 y 31 de enero?'
							Escribir '1)SI  2)NO'
							Leer fecha
							Si fecha=1 Entonces
								Escribir 'Felicidades, hay un descuento del 30% en el producto LAPTOP'
								descuento <- (30*antivirus)/100
								cuenta <- descuento+laptop
								cambio <- pago-cuenta
								Escribir '¿Gusta usar el mismo metodo de pago?'
								Escribir '1)SI  2)NO'
								Leer RP
								Si RP=1 Entonces
									Escribir 'Seleccione metodo de pago'
									Escribir '1)EFECTIVO  2)TARJETA DE CREDITO'
									Leer MP
									Si MP=1 Entonces
										Escribir 'ANTIVIRUS:$',descuento
										Escribir 'LAPTOP:$',laptop
										Escribir 'Total:$',cuenta
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											Escribir 'Seleccione su regalo'
											Escribir '1)AUDIFONOS  2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Regalo: Audifonos inalambricos'
											SiNo
												Escribir 'Regalo: Mochila'
											FinSi
											cambio1 <- pago-cuenta
											Escribir 'Su cambio es:$',cambio1
										SiNo
											Escribir 'Efectivo insuficiente'
										FinSi
									SiNo
										Escribir 'Seleccione su regalo'
										Escribir '1)AUDIFONOS INALAMBRICOS  2)MOCHILA'
										Leer regalo
										Si regalo=1 Entonces
											Escribir 'Regalo:Audifonos inalambricos'
										SiNo
											Escribir 'Regalo: Mochila'
										FinSi
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'LAPTOP:$',laptop
										Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta'
									FinSi
								SiNo
									Escribir '¿Gusta pagar el ANTIVIRUS en efectivo?'
									Escribir '1)SI  2)NO'
									Leer RP1
									Si RP1=1 Entonces
										Escribir 'ANTIVIRUS:$',descuento
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=descuento Entonces
											Escribir 'Seleccione su regalo'
											Escribir '1) AUDIFONOS  2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Regalo: Audifonos inalambricos'
											SiNo
												Escribir 'Regalo: Mochila'
											FinSi
											cambio1 <- pago-descuento
											Escribir 'Su cambio es:$',cambio1
											Escribir 'Se cargo:$',laptop,' a su tarjeta'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												Escribir 'ANTIVIRUS:$',descuento
												Escribir 'LAPTOP:$',laptop
												Escribir 'Seleccione su regalo:'
												Escribir '1)AUDIFONOS INALAMBRICOS  2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Regalo: Audifonos inalambricos'
												SiNo
													Escribir 'Regalo: Mochila'
												FinSi
												cuenta1 <- descuento+laptop
												Escribir 'Se cargo un total de:$',cuenta1,' a su tarjeta'
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									SiNo
										Escribir 'LAPTOP:$',laptop
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=laptop Entonces
											cambio1 <- pago-laptop
											Escribir 'Su cambio es:$',cambio1
											Escribir 'Se cargaron:$',descuento,' a su tarjeta de credito'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta?'
											Escribir '1)SI  2)NO'
											Leer EI
											Si EI=1 Entonces
												Escribir 'ANTIVIRUS:$',descuento
												Escribir 'LAPTOP:$',laptop
												Escribir 'Seleccione su regalo'
												Escribir '1)AUDIFONOS INALAMBRICOS  2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Regalo:Audifonos inalambricos'
												SiNo
													Escribir 'Regalo: Mochila'
												FinSi
												cuenta1 <- descuento+laptop
												Escribir 'Se cargo un total de:$',cuenta1,' a su tarjeta'
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir '¿Gusta usar el mismo metodo de pago para ambos productos?'
								Escribir '1)SI  2)NO'
								Leer RP
								Si RP=1 Entonces
									cuenta <- laptop+cuenta
									cambio <- pago-cuenta
									Escribir 'Seleccione modo de pago'
									Escribir '1)EFECTIVO  2)TARJETA DE CREDITO'
									Leer MP
									Si MP=1 Entonces
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'LAPTOP:$',laptop
										Escribir 'Total:$',cuenta
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											Escribir 'Seleccione su regalo (el producto LAPTOP ofrece un regalo'
											Escribir '1)AUDIFONOS INALAMBRICOS  2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Regalo: Audifonos inalambricos'
											SiNo
												Escribir 'Regalo: Mochila'
											FinSi
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente'
										FinSi
									SiNo
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'LAPTOP:$',laptop
										Escribir 'Total:$',cuenta
										Escribir 'Seleccione su regalo (El producto LAPTOP le ofrece este producto de regalo'
										Escribir '1)AUDIFONOS INALAMBRICOS  2)MOCHILA'
										Leer regalo
										Si regalo=1 Entonces
											Escribir 'Regalo: Audifonos inalambricos'
										SiNo
											Escribir 'Regalo: Mochila'
										FinSi
										Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
									FinSi
								SiNo
									Escribir '¿Gusta pagar con efectivo el ANTIVIRUS?'
									Escribir '1)SI 2)NO'
									Leer RP1
									Si RP1=1 Entonces
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=antivirus Entonces
											cambio <- pago-antivirus
											Escribir 'Seleccione su regalo'
											Escribir '1)AUDIFONO 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Regalo: Audifono inalambrico'
											SiNo
												Escribir 'Regalo: Mochila'
											FinSi
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente, ¿Gusta pagar con tarjeta de credito?'
											Escribir '1)SI 2)NO'
											Leer EI
											Si EI=1 Entonces
												Escribir 'ANTIVIRUS:$',antivirus
												Escribir 'LAPTOP:$',laptop
												Escribir 'Se cargo un total de :$',cuenta,' a su tarjeta de credito'
												Escribir 'Antes de irse, seleccione su regalo'
												Escribir '1)AUDIFONOS INALAMBRICOS 2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Regalo: Audifonos inalambricos'
												FinSi
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									SiNo
										Escribir '¿Gusta pagar ANTIVIRUS con efectivo?'
										Escribir '1)SI 2)NO'
										Leer RP2
										Si RP2=1 Entonces
											Escribir 'ANTIVIRUS:$',antivirus
											Escribir '¿Con cuanto desea pagar?'
											Leer pago
											Si pago>=antivirus Entonces
												cambio <- pago-antivirus
												Escribir 'Su cambio es:$',cambio
												Escribir 'Eliga su regalo'
												Escribir '1)AUDIFONOS INALAMBRICOS 2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Regalo: Audifonos inalambricos'
												SiNo
													Escribir 'Regalo: Mochila'
												FinSi
												Escribir 'Se cargaron:$',laptop,' a su tarjeta de credito'
											SiNo
												Escribir 'Efectivo insuficiente, ¿Gusta pagar con tarjeta?'
												Escribir '1)SI 2)NO'
												Leer EI
												Si EI=1 Entonces
													cuenta <- antivirus+laptop
													Escribir 'ANTIVIRUS:$',antivirus
													Escribir 'LAPTOP:$',laptop
													Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
													Escribir 'Antes de irse seleccione su regalo'
													Escribir '1)AUDIFONO INALAMBRICO 2)MOCHILA'
													Leer regalo
													Si regalo=1 Entonces
														Escribir 'Regalo: Audifono inalambrico'
													SiNo
														Escribir 'Regalo: Mochila'
													FinSi
												SiNo
													Escribir 'Transaccion incompleta'
												FinSi
											FinSi
										SiNo
											Escribir 'LAPTOP:$',laptop
											Escribir '¿Con cuanto desea pagar?'
											Leer pago
											Si pago>=laptop Entonces
												cambio <- pago-laptop
												Escribir 'Su cambio es:$',cambio
												Escribir 'Elija su regalo'
												Escribir '1)AUDIFONOS 2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Regalo: Audifonos'
												SiNo
													Escribir 'Regalo: Mochila'
												FinSi
												Escribir 'Se cargaron:$',antivirus,' a su tarjeta de credito'
											SiNo
												Escribir 'Efectivo insuficiente, ¿Gusta pagar con tarjeta de credito'
												Escribir '1)SI 2)NO'
												Leer EI
												Si EI=1 Entonces
													cuenta <- antivirus+laptop
													Escribir 'Seleccione su regalo'
													Escribir '1)AUDIFONOS 2)MOCHILA'
													Leer regalo
													Si regalo=1 Entonces
														Escribir 'Regalo: Audifonos inalambricos'
													SiNo
														Escribir 'Regalo: Mochila'
													FinSi
													Escribir 'ANTIVIRUS:$',antivirus
													Escribir 'LAPTOP:$',laptop
													Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
												SiNo
													Escribir 'Transaccion incompleta'
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
					FinSegun
				3:
					Escribir 'LAPTOP seleccionado'
					Escribir 'Seleccione su segundo producto'
					Escribir '1)COMBO ESTUDIO 2)ANTIVIRUS'
					Leer Producto2
					Segun Producto2  Hacer
						1:
							Escribir 'LAPTOP:$',laptop
							Escribir 'COMBO ESTUDIO:$',ce
							cuenta <- laptop+ce
							Escribir 'Total:$',cuenta
							Escribir 'Desea usar el mismo modo de pago para ambos productos?'
							Escribir '1)SI  2)NO'
							Leer RP
							Si RP=1 Entonces
								Escribir 'Seleccione su modo de pago:'
								Escribir '1)EFECTIVO 2)TARJETA DE CREDITO'
								Leer MP
								Si MP=1 Entonces
									Escribir 'Total:$',cuenta
									Escribir '¿Con cuanto desea pagar?'
									Leer pago
									Si pago>=cuenta Entonces
										cambio <- pago-cuenta
										Escribir 'Su cambio es:$',cambio
										Escribir 'Seleccione su regalo gracias al producto LAPTOP'
										Escribir '1)AUDIFONOS 2)MOCHILA'
										Leer regalo
										Si regalo=1 Entonces
											Escribir 'De regalo: audifonos inalambricos'
										SiNo
											Escribir 'De regalo: Mochila'
										FinSi
									SiNo
										Escribir 'Efectivo insuficiente'
									FinSi
								SiNo
									Escribir 'LAPTOP:$',laptop
									Escribir 'COMBO ESTUDIO:$',ce
									Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
									Escribir 'Antes de irse, seleccione su regalo gracias al producto LAPTOP'
									Escribir '1)AUDIFONOS 2)MOCHILA'
									Leer regalo
									Si regalo=1 Entonces
										Escribir 'Regalo: audifonos inalambricos'
									SiNo
										Escribir 'Regalo: mochila'
									FinSi
								FinSi
							SiNo
								Escribir '¿Desea pagar LAPTOP con efectivo?'
								Escribir '1)SI 2)NO'
								Leer RP1
								Si RP1=1 Entonces
									Escribir 'LAPTOP:$',laptop
									Escribir '¿Con cuanto desea pagar?'
									Leer pago
									Si pago>=laptop Entonces
										cambio <- pago-laptop
										Escribir 'Su cambio es:$',cambio
										Escribir 'Se cargo:$',ce,' a su tarjeta de credito'
										Escribir 'Seleccione su regalo: 1)AUDIFONOS 2)MOCHILA'
										Leer regalo
										Si regalo=1 Entonces
											Escribir 'Regalo:audifonos inalambricos'
										SiNo
											Escribir 'Regalo:mochila'
										FinSi
									SiNo
										Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta de credito?'
										Escribir '1)SI 2)NO'
										Leer EI
										Si EI=1 Entonces
											Escribir 'Seleccione su regalo'
											Escribir '1)AUDIFONOS 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Regalo:Audifonos inalambricos'
											SiNo
												Escribir 'Regalo: Mochila'
											FinSi
											Escribir 'SE HAN CARGADO:$',cuenta,' A SU TARJETA.'
										SiNo
											Escribir 'Transaccion incompleta'
										FinSi
									FinSi
								SiNo
									Escribir 'COMBO ESTUDIO:$',ce
									Escribir '¿Con cuanto desea pagar?'
									Leer pago
									Si pago>=ce Entonces
										cambio1 <- pago-ce
										Escribir 'Su cambio es:$',cambio1
										Escribir 'Se cargaron:$',laptop,' A su tarjeta de credito'
										Escribir 'Seleccione su regalo:'
										Escribir '1)AUDIFONOS 2)MOCHILA'
										Leer regalo
										Si regalo=1 Entonces
											Escribir 'Audifonos de regalo'
										SiNo
											Escribir 'Mochila de regalo'
										FinSi
									SiNo
										Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta de credito?'
										Escribir '1)SI 2)NO'
										Leer EI
										Si EI=1 Entonces
											Escribir 'Seleccione su regalo:'
											Escribir '1)AUDIFONOS 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Audifonos inalambricos de regalo'
											SiNo
												Escribir 'Mochila de regalo'
											FinSi
											Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
										SiNo
											Escribir 'Transaccion no completada'
										FinSi
									FinSi
								FinSi
							FinSi
						2:
							Escribir 'LAPTOP:$',laptop
							Escribir 'ANTIVIRUS:$',antivirus
							Escribir '¿Se encuentra entre el 25 y 31 de enero?'
							Escribir '1)SI 2)NO'
							Leer fecha
							Si fecha=1 Entonces
								descuento <- (30*antivirus)/100
								Escribir 'Precio del antivirus rebajado:$',descuento
								Escribir '¿Gusta usar el mismo metodo de pago para ambos productos?'
								Escribir '1)SI 2)NO'
								Leer RP
								Si RP=1 Entonces
									Escribir 'Seleccione su metodo de pago'
									Escribir '1)EFECTIVO 2)TARJETA DE CREDITO'
									Leer MP
									Si MP=1 Entonces
										Escribir 'LAPTOP:$',laptop
										Escribir 'ANTIVIRUS:$',descuento
										cuenta <- descuento+laptop
										Escribir 'Total:$',cuenta
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											cambio <- pago-cuenta
											Escribir 'Su cambio es de:$',cambio
											Escribir 'Seleccione su regalo'
											Escribir '1) AUDIFONOS 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Audifonos de regalo'
											SiNo
												Escribir 'Mochila de regalo'
											FinSi
										SiNo
											Escribir 'Efectivo insuficiente'
										FinSi
									SiNo
										Escribir 'LAPTOP:$',laptop
										Escribir 'ANTIVIRUS:$',descuento
										cuenta <- descuentolaptop
										Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
										Escribir 'Seleccione su regalo'
										Escribir '1)AUDIFONOS INALAMBRICOS 2)MOCHILA'
										Leer regalo
										Si regalo=1 Entonces
											Escribir 'Audifonos de regalo'
										SiNo
											Escribir 'Mochila de regalo'
										FinSi
									FinSi
								SiNo
									Escribir '¿Gusta pagar LAPTOP con efectivo?'
									Escribir '1)SI 2)NO'
									Leer RP1
									Si RP1=1 Entonces
										Escribir 'LAPTOP:$',laptop
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=laptop Entonces
											Escribir 'Seleccione su regalo:'
											Escribir '1)AUDIFONOS 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Audifonos de regalo'
											SiNo
												Escribir 'Mochila de regalo'
											FinSi
											cambio <- pago-laptop
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',descuento,'a su tarjeta de credito'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Gusta pagar con tarjeta de credito?'
											Escribir '1)SI 2)NO'
											Leer EI
											Si EI=1 Entonces
												Escribir 'LAPTOP:$',laptop
												Escribir 'ANTIVIRUS:$',descuento
												cuenta <- descuento+laptop
												Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta'
												Escribir 'Seleccione su regalo:'
												Escribir '1)AUDIFONOS 2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Audifonos de regalo'
												SiNo
													Escribir 'Mochila de regalo'
												FinSi
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									SiNo
										Escribir 'ANTIVIRUS:$',descuento
										Escribir 'Con cuanto deseas pagar?'
										Leer pago
										Si pago>=descuento Entonces
											cambio <- pago-descuento
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',laptop,' a su tarjeta de credito'
											Escribir 'Seleccione su regalo'
											Escribir '1)AUDIFONOS 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Audifonos de regalo'
											SiNo
												Escribir 'Mochila de regalo'
											FinSi
										SiNo
											Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta?'
											Escribir '1)SI 2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- laptop+descuento
												Escribir 'LAPTOP:$',laptop
												Escribir 'ANTIVIRUS:$',descuento
												Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
												Escribir 'Seleccione su regalo: 1)AUDIFONOS 2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Audifonos de regalo'
												SiNo
													Escribir 'Mochila de regalo'
												FinSi
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									FinSi
								FinSi
							SiNo
								Escribir 'Gusta el mismo metodo de pago para ambos productos?'
								Escribir '1)SI 2)NO'
								Leer RP
								Si RP=1 Entonces
									Escribir 'Seleccione metodo de pago'
									Escribir '1)EFECTIVO 2)TARJETA DE CREDITO'
									Leer MP
									Si MP=1 Entonces
										cuenta <- antivirus+laptop
										Escribir 'LAPTOP:$',laptop
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'Total:$',cuenta
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=cuenta Entonces
											Escribir 'Seleccione su regalo'
											Escribir '1)AUDIFONOS 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Audifonos de regalo'
											SiNo
												Escribir 'Mochila de regalo'
											FinSi
											cambio <- pago-cuenta
											Escribir 'Su cambio es:$',cambio
										SiNo
											Escribir 'Efectivo insuficiente'
										FinSi
									SiNo
										Escribir 'Seleccione su regalo:'
										Escribir '1)AUDIFONOS 2)MOCHILA'
										Leer regalo
										Si regalo=1 Entonces
											Escribir 'Audifonos de regalo'
										SiNo
											Escribir 'Mochila de regalo'
										FinSi
										cuenta <- antivirus+laptop
										Escribir 'LAPTOP:$',laptop
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir 'Se cargo un total de :$',cuenta,' a su tarjeta de credito'
									FinSi
								SiNo
									Escribir '¿Gusta pagar LAPTOP con efectivo?'
									Escribir '1)SI 2)NO'
									Leer RP1
									Si RP1=1 Entonces
										Escribir 'LAPTOP:$',laptop
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=laptop Entonces
											Escribir 'Seleccione su regalo'
											Escribir '1)AUDIFONOS 2)MOCHILA'
											Leer regalo
											Si regalo=1 Entonces
												Escribir 'Audifonos de regalo'
											SiNo
												Escribir 'Mochila de regalo'
											FinSi
											cambio <- pago-laptop
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargo:$',antivirus,' a su tarjeta de credito'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Desea pagar con tarjeta?'
											Escribir '1)SI 2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- laptop+antivirus
												Escribir 'LAPTOP:$',laptop
												Escribir 'ANTIVIRUS:$',antivirus
												Escribir 'Se cargo un total de :$',cuenta,' a su tarjeta de credito'
												Escribir 'Seleccione su regalo'
												Escribir '1)AUDIFONOS 2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Audifonos de regalo'
												SiNo
													Escribir 'Mochila de regalo'
												FinSi
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									SiNo
										Escribir 'ANTIVIRUS:$',antivirus
										Escribir '¿Con cuanto desea pagar?'
										Leer pago
										Si pago>=antivirus Entonces
											Escribir 'Seleccione su regalo:'
											Escribir '1)AUDIFONOS 2)MOCHILA'
											Leer pago
											Si pago=1 Entonces
												Escribir 'Audifonos de regalo'
											SiNo
												Escribir 'Mochila de regalo'
											FinSi
											cambio <- pago-antivirus
											Escribir 'Su cambio es:$',cambio
											Escribir 'Se cargaron:$',laptop,' a su tarjeta de credito'
										SiNo
											Escribir 'Efectivo insuficiente, ¿Gusta pagar con tarjeta de credito?'
											Escribir '1)SI 2)NO'
											Leer EI
											Si EI=1 Entonces
												cuenta <- laptop+antivirus
												Escribir 'LAPTOP:$',laptop
												Escribir 'ANTIVIRUS:$',antivirus
												Escribir 'Se cargo un total de:$',cuenta,' a su tarjeta de credito'
												Escribir 'Seleccione su regalo'
												Escribir '1)AUDIFONOS 2)MOCHILA'
												Leer regalo
												Si regalo=1 Entonces
													Escribir 'Audifonos de regalo'
												SiNo
													Escribir 'Mochila de regalo'
												FinSi
											SiNo
												Escribir 'Transaccion incompleta'
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						De Otro Modo:
							Escribir 'Combinacion invalida'
					FinSegun
				De Otro Modo:
					Escribir 'ERROR: PRODUCTO INVALIDO'
			FinSegun
		SiNo
			Escribir 'Seleccione su producto.'
			Leer SoloUno
			Segun SoloUno  Hacer
				1:
					Escribir 'COMBO ESTUDIO SELECCIONADO.'
					Escribir 'Total:',ce
					Escribir 'Seleccione metodo de pago.'
					Escribir '1) EFECTIVO'
					Escribir '2) TARJETA DE CREDITO'
					Leer MP
					Si MP=1 Entonces
						Escribir 'Metodo de pago EFECTIVO seleccionado.'
						Escribir '¿Con cuanto desea pagar?'
						Leer pago
						Si pago>=ce Entonces
							cambio <- pago-ce
							Escribir 'Su cambio es:$',cambio
						SiNo
							Escribir 'Efectivo insuficiente.'
						FinSi
					SiNo
						Escribir 'Metodo de pago TARJETA DE CREDITO seleccionado.'
						Escribir 'Se cargaron:',ce,' a su tarjeta de credito.'
						Escribir 'Gracias por su preferencia.'
					FinSi
				2:
					Escribir 'ANTIVIRUS SELECCIONADO.'
					Escribir 'Total:',antivirus
					Escribir '¿Se encuentra entre el 25 y 31 de enero?'
					Escribir '1) SI'
					Escribir '2) NO'
					Leer fecha
					Si fecha=1 Entonces
						Escribir 'Felicidades, se ha aplicado un 30% de descuento'
						Escribir 'Seleccione metodo de pago:'
						Escribir '1) EFECTIVO 2) TARJETA DE CREDITO'
						Leer MP
						descuento <- (30*antivirus)/100
						Si MP=1 Entonces
							Escribir lista_de_expresiones
							Escribir 'Metodo de pago EFECTIVO seleccionado.'
							Escribir 'Precio con descuento aplicado:',descuento
							Escribir '¿Con cuanto desea pagar?'
							Leer pago
							Si pago>=descuento Entonces
								cambio <- pago-descuento
								Escribir 'Su cambio es:$',cambio
							SiNo
								Escribir 'Efectivo insuficiente.'
							FinSi
						SiNo
							Escribir lista_de_expresiones
							Escribir 'Metodo de pago TARJETA DE CREDITO seleccionado.'
							Escribir 'Se cargaron:',descuento,' a su tarjeta de credito.'
							Escribir lista_de_expresiones
							Escribir 'Gracias por su preferencia.'
						FinSi
					SiNo
						Escribir 'Seleccione metodo de pago:'
						Escribir '1) EFECTIVO 2) TARJETA DE CREDITO'
						Leer MP
						Si MP=1 Entonces
							Escribir lista_de_expresiones
							Escribir 'Metodo de pago EFECTIVO seleccionado.'
							Escribir 'Total:',antivirus
							Escribir '¿Con cuanto desea pagar?'
							Leer pago
							Si pago>=antivirus Entonces
								cambio <- pago-antivirus
								Escribir lista_de_expresiones
								Escribir 'Su cambio es:$',cambio
							SiNo
								Escribir 'Efectivo insuficiente.'
							FinSi
						SiNo
							Escribir lista_de_expresiones
							Escribir 'Metodo de pago TARJETA DE CREDITO seleccionado.'
							Escribir 'Se cargaron:',antivirus,' a su tarjeta de credito.'
							Escribir 'Gracias por su preferencia.'
						FinSi
					FinSi
				3:
					Escribir 'LAPTOP SELECCIONADA.'
					Escribir 'Total:',laptop
					Escribir 'Felicidades, de regalo puedes elegir entre una mochila o audifonos inalambricos.'
					Escribir 'Seleccione su regalo:'
					Escribir '1) MOCHILA  2) AUDIFONOS'
					Leer regalo
					Si regalo=1 Entonces
						Escribir 'Seleccione metodo de pago:'
						Escribir '1) EFECTIVO  2) TARJETA DE CREDITO'
						Leer MP
						Si MP=1 Entonces
							Escribir 'Metodo de pago EFECTIVO seleccionado.'
							Escribir 'Total:$',laptop
							Escribir '¿Con cuanto desea pagar?'
							Leer pago
							Si pago>=laptop Entonces
								cambio <- pago-laptop
								Escribir 'Su cambio es:$',cambio
								Escribir 'DE REGALO UNA MOCHILA'
							SiNo
								Escribir 'Efectivo insuficiente'
							FinSi
						SiNo
							Escribir 'Metodo de pago TARJETA seleccionado.'
							Escribir 'Se cargaron:',laptop,' a tu tarjeta de credito'
							Escribir 'DE REGALO UNA MOCHILA'
						FinSi
					SiNo
						Escribir 'Seleccione metodo de pago:'
						Escribir '1) EFECTIVO  2) TARJETA DE CREDITO'
						Leer MP
						Si MP=1 Entonces
							Escribir 'Metodo de pago EFECTIVO seleccionado.'
							Escribir 'Total:$',laptop
							Escribir '¿Con cuanto desea pagar?'
							Leer pago
							Si pago>=laptop Entonces
								cambio <- pago-laptop
								Escribir 'Su cambio es:$',cambio
								Escribir 'DE REGALO AUDIFONOS INALAMBRICOS'
							SiNo
								Escribir 'Efectivo insuficiente.'
							FinSi
						SiNo
							Escribir 'Metodo de pago TARJETA seleccionado.'
							Escribir 'Se cargaron:$',laptop,' a tu tarjeta de credito.'
							Escribir 'DE REGALO AUDIFONOS INALAMBRICOS'
						FinSi
					FinSi
				De Otro Modo:
					Escribir 'OPCION INVALIDA'
			FinSegun
		FinSi
	SiNo
		Escribir 'Lo sentimos, solamente puede adquirir como maximo 2 productos.'
	FinSi
FinAlgoritmo

