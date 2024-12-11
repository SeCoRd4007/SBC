:- dynamic respuesta/0, tipoMuestra/0, cuidados_y_recomendaciones/0, procedimiento/1,
muestra_recolectada_fuera/0, tecnica/1, materiales/1, muestra/1, transportar_muestra/0,
tiempo_recolectado_inmediatamente/0, muestra_recolectada_inmediatamente/0,
regla_aplicada/1,edadPaciente/1.
menu:- 
        retractall(muestra(_)),
        retractall(tipoMuestra(_)),
        retractall(cuidados_y_recomendaciones),
        retractall(procedimiento(_)),
        retractall(muestra_recolectada_fuera),
        retractall(tecnica(_)),
        retractall(materiales(_)),
        retractall(muestra_recolectada_inmediatamente),
        retractall(transportar_muestra),
        retractall(regla_aplicada(_)),
        write('TOMA Y MANIPULACION DE MUESTRAS'), nl,
        write('--------------------------------'),nl,
        write('1.Muestras de orina'),nl,
        write('2.Muestras de sangre'),nl,
        write('3.Muestras del tracto respiratorio'),nl,
        write('--4.Muestras liquidos corporales--'),nl,
        write('5.Muestras de piel y mucosa'),nl,
        write('6.Muestras de biobsia y tejidos'),nl,
        write('7.Muestras de heces'),nl,
        write('8.Muestras oticas, oculares y dentales'),nl,
        write('9.Muestras para deteccion de hongos'),nl,
        write('10.Muestras tracto genitourinario'),nl,
        write('Elija una opcion: '),
        read(R),
        retractall(respuesta(_)),
        asserta(respuesta(R)),
        desicion.

desicion:-
        write('-------------------------------------------------'),nl,
        write('escriba la accion que desea ejecutar: '),nl,
        write('1.Toma de muestra'),nl,
        write('2.Materiales o equipo de muestra'),nl,
        write('Elija una opcion: '),
        read(R),
        retractall(respuestadesicion(_)),
        asserta(respuestadesicion(R)),
        submenu.
        submenu:-
        respuesta(2),
        write('---------------------------------'),nl,
        write('       MUESTRAS PARA SANGRE'),nl,
        write('----------------------------------'),nl,
        write('1. Hemocultivo: Sangre obtenida por puncion periferica'),nl,
        write('2. Hemocultivo: Sangre obtenida por cateter venoso central'),nl,
        write('3. Hemocultivo: Pacientes con sospecha de infeccion del torrente sanguineo relacionado al cateter venoso central'),nl,
        write('4. Punta de cateter: Pacientes con sospecha de infeccion del torrente sanguineo relacionado al cateter venoso central'),nl,
        write('5. Secrecion sitio de insercion de cateter: Sitio de insercion del cateter vascular'),nl,
        write('Elija una opcion: '),
        read(R),
        retractall(respuesta(_)),
        asserta(respuesta(R)),
        sangre.
submenu:-
        respuesta(2),
        write('---------------------------------'),nl,
        write('       MUESTRAS PARA SANGRE'),nl,
        write('----------------------------------'),nl,
        write('1. Hemocultivo: Sangre obtenida por puncion periferica'),nl,
        write('2. Hemocultivo: Sangre obtenida por cateter venoso central'),nl,
        write('3. Hemocultivo: Pacientes con sospecha de infeccion del torrente sanguineo relacionado al cateter venoso central'),nl,
        write('4. Punta de cateter: Pacientes con sospecha de infeccion del torrente sanguineo relacionado al cateter venoso central'),nl,
        write('5. Secrecion sitio de insercion de cateter: Sitio de insercion del cateter vascular'),nl,
        write('Elija una opcion: '),
        read(R),
        retractall(respuesta(_)),
        asserta(respuesta(R)),
        sangre.

submenu:-
        respuesta(8),
        asserta(procedimiento(oticas_oculares_dentales)),
        write('---------------------------------'),nl,
        write('MUESTRAS PARA DETECCION DE oticas'),nl,
        write('----------------------------------'),nl,
        write('1.secrecion ocular'),nl,
        write('2.secrecion de oido'),nl,
        write('Elija una opcion: '),
        read(R),
        retractall(respuesta(_)),
        asserta(respuesta(R)),
        oticas.

submenu:-
        respuesta(9),
        asserta(procedimiento(deteccion_de_hongos)),
        write('---------------------------------'),nl,
        write('MUESTRAS PARA DETECCION DE ONGOS'),nl,
        write('----------------------------------'),nl,
        write('1.Liquidos y fluidos corporales'),nl,
        write('2.Lesiones descamativas'),nl,
        write('--3.Liquido cefalorraquideo--'),nl,
        write('--4.Secreciones oculares--'),nl,
        write('5.Cuero cabelludo y pelo'),nl,
        write('6.Piel, costras y escamas'),nl,
        write('7.Oido externo'),nl,
        write('8.Unas'),nl,
        write('9.Fluido prostatico'),nl,
        write('10.Salir'),nl,
        write('Elija una opcion: '),
        read(R),
        retractall(respuesta(_)),
        asserta(respuesta(R)),
        hongos.

sangre:-
        respuestadesicion(1),
        respuesta(1),
        write('----------------------------------'),nl,
        write('-MUESTRAS PARA SANGRE-'),nl,
        write('-----------------------------------'),nl,
        write('-------HEMOCULTIVO: SANGRE OBTENIDA POR PUNCION PERIFERICA-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
                write(''),nl,
                write('(a)	Realizar lavado de manos quirurgico.'),nl,
                write('(b)	Mantener tecnica aseptica durante todo el procedimiento.'),nl,
                write('(c)	Utilizar campo esteril para evitar tener contacto con areas circundantes que ofrezca el riesgo de contaminacion.'),nl,
                write('(d)	Colocar mascarilla al paciente.'),nl,
                write('(e)	Realizar antisepsia de la zona a puncionar; no palpe la vena sin guantes estériles una vez preparada la piel.'),nl,
                write('(f)	Utilizar otros guantes esteriles para cada puncion.'),nl,
                write('(g)	No cambiar la aguja para envasar la sangre en los frascos colectores.'),nl,
                write('(h)	En pacientes que estan recibiendo tratamiento antibiotico, recolectar las muestras en botellas con resina.'),nl,
                write('(i)	Se debe mantener una dilucion en las botellas de hemocultivos de 1:5 para pacientes pediatricos y 1:10 para pacientes adultos de acuerdo con la recomendacion del fabricante.'),nl,
                write('(j)	Para buscar micobacterias es necesario tomar la muestra y colocarla en heparina; se recomienda tomar muestra durante dos dias.'),nl,
                write('--------------------------------------------------------------------------'),nl,
                write('¿se siguieron las recomendaciones?(s/n):'),
        asserta(tipoMuestra(hemocultivo)),
        asserta(muestra(sangre_obtenida_por_puncion_periferica)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.

sangre:-
        respuestadesicion(2),
        respuesta(1),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(hemocultivo)),
        asserta(materiales(sangre_obtenida_por_puncion_periferica)),
        evaluar.

sangre:-
        respuestadesicion(1),
        respuesta(2),
        write('----------------------------------'),nl,
        write('-MUESTRAS PARA SANGRE-'),nl,
        write('-----------------------------------'),nl,
        write('-------HEMOCULTIVO: SANGRE OBTENIDA POR CATETER VENOSO CENTRAL-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
                write(''),nl,
                write('(a)	Realizar lavado de manos quirurgico.'),nl,
                write('(b)	Mantener tecnica aseptica durante todo el procedimiento.'),nl,
                write('(c)	Utilizar campo esteril para evitar tener contacto con areas circundantes que ofrezca el riesgo de contaminacion.'),nl,
                write('(d)	Colocar mascarilla al paciente.'),nl,
                write('(e)	Realizar antisepsia de la zona a puncionar; no palpe la vena sin guantes estériles una vez preparada la piel.'),nl,
                write('(f)	Utilizar otros guantes esteriles para cada puncion.'),nl,
                write('(g)	No cambiar la aguja para envasar la sangre en los frascos colectores.'),nl,
                write('(h)	En pacientes que estan recibiendo tratamiento antibiotico, recolectar las muestras en botellas con resina.'),nl,
                write('(i)	Se debe mantener una dilucion en las botellas de hemocultivos de 1:5 para pacientes pediatricos y 1:10 para pacientes adultos de acuerdo con la recomendacion del fabricante.'),nl,
                write('(j)	Para buscar micobacterias es necesario tomar la muestra y colocarla en heparina; se recomienda tomar muestra durante dos dias.'),nl,
                write('--------------------------------------------------------------------------'),nl,
                write('¿se siguieron las recomendaciones?(s/n):'),
        asserta(tipoMuestra(hemocultivo)),
        asserta(muestra(sangre_obtenida_por_cateter_venoso_central)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.

sangre:-
        respuestadesicion(2),
        respuesta(2),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(hemocultivo)),
        asserta(materiales(sangre_obtenida_por_cateter_venoso_central)),
        evaluar.

sangre:-
        respuestadesicion(1),
        respuesta(3),
        write('----------------------------------'),nl,
        write('-MUESTRAS PARA SANGRE-'),nl,
        write('-----------------------------------'),nl,
        write('-------HEMOCULTIVO: PACIENTES CON SOSPECHA DE INFECCION DEL TORRENTE SANGUINEO RELACIONADO AL CATETER VENOSO CENTRAL-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
                write(''),nl,
                write('(a)	Realizar lavado de manos quirurgico.'),nl,
                write('(b)	Mantener tecnica aseptica durante todo el procedimiento.'),nl,
                write('(c)	Utilizar campo esteril para evitar tener contacto con areas circundantes que ofrezca el riesgo de contaminacion.'),nl,
                write('(d)	Colocar mascarilla al paciente.'),nl,
                write('(e)	Realizar antisepsia de la zona a puncionar; no palpe la vena sin guantes estériles una vez preparada la piel.'),nl,
                write('(f)	Utilizar otros guantes esteriles para cada puncion.'),nl,
                write('(g)	No cambiar la aguja para envasar la sangre en los frascos colectores.'),nl,
                write('(h)	En pacientes que estan recibiendo tratamiento antibiotico, recolectar las muestras en botellas con resina.'),nl,
                write('(i)	Se debe mantener una dilucion en las botellas de hemocultivos de 1:5 para pacientes pediatricos y 1:10 para pacientes adultos de acuerdo con la recomendacion del fabricante.'),nl,
                write('(j)	Para buscar micobacterias es necesario tomar la muestra y colocarla en heparina; se recomienda tomar muestra durante dos dias.'),nl,
                write('--------------------------------------------------------------------------'),nl,
                write('¿se siguieron las recomendaciones?(s/n):'),
        asserta(tipoMuestra(hemocultivo)),
        asserta(muestra(pacientes_sospecha_infeccion_torrente_sanguineo_cateter_venoso_central)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.

sangre:-
        respuestadesicion(2),
        respuesta(3),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(hemocultivo)),
        asserta(materiales(pacientes_sospecha_infeccion_torrente_sanguineo_cateter_venoso_central)),
        evaluar.
    
sangre:-
        respuestadesicion(1),
        respuesta(4),
        write('----------------------------------'),nl,
        write('-MUESTRAS PARA SANGRE-'),nl,
        write('-----------------------------------'),nl,
        write('-------PUNTA DE CATETER: PACIENTES CON SOSPECHA DE INFECCION DEL TORRENTE SANGUINEO RELACIONADO AL CATETER VENOSO CENTRAL-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
                write(''),nl,
                write('(a)	Realizar lavado de manos quirurgico.'),nl,
                write('(b)	Mantener tecnica aseptica durante todo el procedimiento.'),nl,
                write('(c)	Utilizar campo esteril para evitar tener contacto con areas circundantes que ofrezca el riesgo de contaminacion.'),nl,
                write('(d)	Colocar mascarilla al paciente.'),nl,
                write('(e)	Realizar antisepsia de la zona a puncionar; no palpe la vena sin guantes estériles una vez preparada la piel.'),nl,
                write('(f)	Utilizar otros guantes esteriles para cada puncion.'),nl,
                write('(g)	No cambiar la aguja para envasar la sangre en los frascos colectores.'),nl,
                write('(h)	En pacientes que estan recibiendo tratamiento antibiotico, recolectar las muestras en botellas con resina.'),nl,
                write('(i)	Se debe mantener una dilucion en las botellas de hemocultivos de 1:5 para pacientes pediatricos y 1:10 para pacientes adultos de acuerdo con la recomendacion del fabricante.'),nl,
                write('(j)	Para buscar micobacterias es necesario tomar la muestra y colocarla en heparina; se recomienda tomar muestra durante dos dias.'),nl,
                write('--------------------------------------------------------------------------'),nl,
                write('¿se siguieron las recomendaciones?(s/n):'),
        asserta(tipoMuestra(punta_de_cateter)),
        asserta(muestra(pacientes_sospecha_infeccion_torrente_sanguineo_cateter_venoso_central)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.

sangre:-
        respuestadesicion(2),
        respuesta(4),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(punta_de_cateter)),
        asserta(materiales(pacientes_sospecha_infeccion_torrente_sanguineo_cateter_venoso_central)),
        evaluar.

sangre:-
        respuestadesicion(1),
        respuesta(5),
        write('----------------------------------'),nl,
        write('-MUESTRAS PARA SANGRE-'),nl,
        write('-----------------------------------'),nl,
        write('-------SECRECION SITIO DE INSERCION DE CATETER: SITIO DE INSERCION DE CATETER VASCULAR-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
                write(''),nl,
                write('(a)	Realizar lavado de manos quirurgico.'),nl,
                write('(b)	Mantener tecnica aseptica durante todo el procedimiento.'),nl,
                write('(c)	Utilizar campo esteril para evitar tener contacto con areas circundantes que ofrezca el riesgo de contaminacion.'),nl,
                write('(d)	Colocar mascarilla al paciente.'),nl,
                write('(e)	Realizar antisepsia de la zona a puncionar; no palpe la vena sin guantes estériles una vez preparada la piel.'),nl,
                write('(f)	Utilizar otros guantes esteriles para cada puncion.'),nl,
                write('(g)	No cambiar la aguja para envasar la sangre en los frascos colectores.'),nl,
                write('(h)	En pacientes que estan recibiendo tratamiento antibiotico, recolectar las muestras en botellas con resina.'),nl,
                write('(i)	Se debe mantener una dilucion en las botellas de hemocultivos de 1:5 para pacientes pediatricos y 1:10 para pacientes adultos de acuerdo con la recomendacion del fabricante.'),nl,
                write('(j)	Para buscar micobacterias es necesario tomar la muestra y colocarla en heparina; se recomienda tomar muestra durante dos dias.'),nl,
                write('--------------------------------------------------------------------------'),nl,
                write('¿se siguieron las recomendaciones?(s/n):'),
        asserta(tipoMuestra(secrecion_sitio_de_insercion_cateter)),
        asserta(muestra(sitio_de_insercion_cateter)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.

sangre:-
        respuestadesicion(2),
        respuesta(5),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(secrecion_sitio_de_insercion_cateter)),
        asserta(materiales(sitio_de_insercion_cateter)),
        evaluar.
oticas:-
        respuestadesicion(1),
        respuesta(1),
        write('----------------------------------'),nl,
        write('-MUESTRAS PARA OTICAS, OCULARES Y DENTALES-'),nl,
        write('-----------------------------------'),nl,
        write('-------SECRECION OCULAR-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
                write('Lapzo de tiempo para entregar la muestrade 24 a 48 horas '),nl,
                write('para el paciente: '),nl,
                write('1.No usar gotas oftalmicas 18 a 24 horas antes de la muestra.'),nl,
                write('2.Ausencia de cualquier cosmetico.'),nl,
                write('3.No tomar antibioticos 24 a 48 horas antes.'),nl,
                write('4.No usar anestesicos que posean actividad antimicrobiana'),nl,
                write('5.En el caso de obtencion de la muestra intraoperatoriamente,
el medico especificara el sitio de donde se tomo la muestra: corneal, del humor acuoso, etc'),nl,
                write('6.No usar anestesicos que posean actividad antimicrobiana'),nl,
                write('7.Si sospecha endoftalmitis envie muestra de aspirado intraocular'),nl,
                write('8.Si sospecha queratitis tome dos muestras con escobillones impregnados con alginato de calcio.'),nl,
                write('9.Los virus mas comunmente aislados son HSV, adenovirus, CMV y VZV.'),nl,
                write('--------------------------------------------------------------------------'),nl,
                write('¿el paciente siguio las recomendaciones?(s/n):'),
        asserta(tipoMuestra(secrecion_ocular)),
        asserta(muestra(secrecion_conjuntival)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.
oticas:-
        respuestadesicion(2),
        respuesta(1),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(secrecion_ocular)),
        asserta(materiales(secrecion_conjuntival)),
        evaluar.

oticas:-
        respuestadesicion(1),
        respuesta(2),
        write('----------------------------------'),nl,
        write('-MUESTRAS PARA OTICAS, OCULARES Y DENTALES-'),nl,
        write('-----------------------------------'),nl,
        write('-------SECRECION DE ODIO-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
                write('Lapzo de tiempo para entregar la muestrade 24 a 48 horas '),nl,
                write('para el paciente: '),nl,
                write('1.No usar gotas oticas de 18 a 24 horas antes de la toma de lamuestra.'),nl,
                write('2.No tomar o aplicar antibioticos de 24 a 48 horas antes.'),nl,
                write('3.Otitis supurativa requiere confirmacion con cultivo de la secrecion.'),nl,
                write('4.Si la sospecha de infeccion es de otitis media la muestra debera
ser tomada por un especialista a traves de timpanocentesis. No
se recomienda hacer de rutina, sino en aquellos casos cronicos
que no responden a la terapiainstaurada.'),nl,
                write('--------------------------------------------------------------------------'),nl,
                write('¿el paciente siguio las recomendaciones?(s/n):'),
        asserta(tipoMuestra(secrecion_oido)),
        asserta(muestra(secrecion_oido)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.
oticas:-
        respuestadesicion(2),
        respuesta(2),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(secrecion_oido)),
        asserta(materiales(secrecion_oido)),
        evaluar.

sangreR1:-
        tipoMuestra(hemocultivo),
        muestra(sangre_obtenida_por_puncion_periferica),
        edadPaciente(adulto),
        tipoAnalisis(sospecha_de_bacteriemia),
        cuidados_y_recomendaciones,
        asserta(transportar_muestra),
        imprimir_materiales_puncion_periferica,nl,
        write('------------------------------------------------------------'),nl,
        write('Pasos para realizar la toma:'),nl,
        write('Sangre obtenida por puncion periferica:
Tomar de 2 a 4 botellas de sangre, cada una de entre 8 ml y 10 ml; y en intervalos de 10 a 15 minutos').

sangreR2:-
        tipoMuestra(hemocultivo),
        muestra(sangre_obtenida_por_puncion_periferica),
        edadPaciente(adulto),
        tipoAnalisis(sospecha_de_endocarditis),
        cuidados_y_recomendaciones,
        asserta(transportar_muestra),
        imprimir_materiales_puncion_periferica,nl,
        write('------------------------------------------------------------'),nl,
        write('Pasos para realizar la toma:'),nl,
        write('Sangre obtenida por puncion periferica:
Tomar 2 botellas de sangre, cada una de entre 8 y 10 ml; y en intervalos de 10 a 15 minutos').

sangreR3:-
        tipoMuestra(hemocultivo),
        muestra(sangre_obtenida_por_puncion_periferica),
        edadPaciente(prematuro_extremo),
        cuidados_y_recomendaciones,
        asserta(transportar_muestra),
        imprimir_materiales_puncion_periferica,nl,
        write('------------------------------------------------------------'),nl,
        write('Pasos para realizar la toma:'),nl,
        write('Sangre obtenida por puncion periferica:
Tomar 2 botellas de sangre, cada una de 0.5 ml; y en intervalos de 10 a 15 minutos').

sangreR4:-
        tipoMuestra(hemocultivo),
        muestra(sangre_obtenida_por_puncion_periferica),
        edadPaciente(neonatos),
        cuidados_y_recomendaciones,
        asserta(transportar_muestra),
        imprimir_materiales_puncion_periferica,nl,
        write('------------------------------------------------------------'),nl,
        write('Pasos para realizar la toma:'),nl,
        write('Sangre obtenida por puncion periferica:
Tomar 2 botellas de sangre, cada una de 1 ml; y en intervalos de 10 a 15 minutos').

sangreR5:-
        tipoMuestra(hemocultivo),
        muestra(sangre_obtenida_por_puncion_periferica),
        edadPaciente(lactantes_y_ninos_hasta_6_anios),
        cuidados_y_recomendaciones,
        asserta(transportar_muestra),
        imprimir_materiales_puncion_periferica,nl,
        write('------------------------------------------------------------'),nl,
        write('Pasos para realizar la toma:'),nl,
        write('Sangre obtenida por puncion periferica:
Tomar 2 botellas de sangre, cada una de entre 2 y 3 ml; y en intervalos de 10 a 15 minutos').

sangreR6:-
        tipoMuestra(hemocultivo),
        muestra(sangre_obtenida_por_puncion_periferica),
        edadPaciente(mayores_de_6_anios),
        cuidados_y_recomendaciones,
        asserta(transportar_muestra),
        imprimir_materiales_puncion_periferica,nl,
        write('------------------------------------------------------------'),nl,
        write('Pasos para realizar la toma:'),nl,
        write('Sangre obtenida por puncion periferica:
Tomar 2 botellas de sangre, cada una de entre 5 y 10 ml; y en intervalos de 10 a 15 minutos').

sangreR7:-
        procedimiento(sangre_obtenida_por_puncion_periferica),
        cuidados_y_recomendaciones,
        tipoMuestra(hemocultivo),
        not(muestra_recolectada_fuera),
        muestra(sangre_obtenida_por_puncion_periferica),
        tecnica(sangre_obtenida_por_puncion_periferica),
        materiales(sangre_obtenida_por_puncion_periferica),
        transportar_muestra,nl,
        write('---------------------------------------------'),nl,
        write('Se recomienda transportar en los primeros 15 minutos de la recolección, manteniendo las muestras a temperatura ambiente.'),
        retractall(procedimiento(sangre_obtenida_por_puncion_periferica)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

imprimir_materiales_puncion_periferica:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras sangre obtenida por puncion periferica:'),nl,
write('(1)	Bata y campos esteriles.'),nl,
write('(2)	Gorro y mascarilla con proteccion ocular.'),nl,
write('(3)	Guantes esteriles.'),nl,
write('(4)	Equipo de asepsia (antiseptico, gasas y guantes esteriles).'),nl,
write('(5)	Frascos para hemocultivos'),nl,
write('(6) Jeringas esteriles').

imprimir_materiales_cateter_venoso_central:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras sangre obtenida por cateter venoso central:'),nl,
write('(1)	Bata y campos esteriles.'),nl,
write('(2)	Gorro y mascarilla con proteccion ocular.'),nl,
write('(3)	Guantes esteriles.'),nl,
write('(4)	Equipo de asepsia (antiseptico, gasas y guantes esteriles).'),nl,
write('(5)	Frascos para hemocultivos'),nl,
write('(6) Jeringas esteriles').

imprimir_materiales_hemo_infeccion_torrente_sanguineo:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras de hemocultivo pacientes con sospecha de infeccion del torrente sanguineo relacionado al cateter venoso central:'),nl,
write('(1)	Bata y campos esteriles.'),nl,
write('(2)	Gorro y mascarilla con proteccion ocular.'),nl,
write('(3)	Guantes esteriles.'),nl,
write('(4)	Equipo de asepsia (antiseptico, gasas y guantes esteriles).'),nl,
write('(5)	Frascos para hemocultivos'),nl,
write('(6) Jeringas esteriles').

imprimir_materiales_punta_infeccion_torrente_sanguineo:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras de punta de cateter pacientes con sospecha de infeccion del torrente sanguineo relacionado al cateter venoso central:'),nl,
write('(1)	Bata y campos esteriles.'),nl,
write('(2)	Gorro y mascarilla con proteccion ocular.'),nl,
write('(3)	Guantes esteriles.'),nl,
write('(4)	Equipo de asepsia (antiseptico, gasas y guantes esteriles).'),nl,
write('(5)	Frascos para hemocultivos'),nl,
write('(6) Jeringas esteriles').

imprimir_materiales_secrecion_punto_de_insercion_cateter_vascular:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras sitio de insercion del cateter vascular:'),nl,
write('(1)	Bata y campos esteriles.'),nl,
write('(2)	Gorro y mascarilla con proteccion ocular.'),nl,
write('(3)	Guantes esteriles.'),nl,
write('(4)	Equipo de asepsia (antiseptico, gasas y guantes esteriles).'),nl,
write('(5)	Frascos para hemocultivos'),nl,
write('(6) Jeringas esteriles').
oticasR1:-
                procedimiento(oticas_oculares_dentales),
                tipoMuestra(secrecion_ocular),
                cuidados_y_recomendaciones,
                muestra_recolectada_fuera,
                not(muestra_recolectada_inmediatamente),
                retractall(muestra_recolectada_fuera),
                write('desechar muestra y tomar una nueva en las instalaciones'),nl.
oticasR4:-     
                procedimiento(oticas_oculares_dentales),
                tipoMuestra(secrecion_ocular),
                cuidados_y_recomendaciones,
                muestra(secrecion_conjuntival),
                not(muestra_recolectada_fuera),
                not(tecnica(secrecion_conjuntival)),
                asserta(tecnica(secrecion_conjuntival)).
oticasR8:-
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_ocular),
                muestra(secrecion_conjuntival),
                tecnica(secrecion_conjuntival),
                not(muestra_recolectada_fuera),
                not(materiales(secrecion_conjuntival)),
                asserta(materiales(secrecion_conjuntival)).  
oticasR9:-
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_ocular),
                muestra(secrecion_conjuntival),
                tecnica(secrecion_conjuntival),
                materiales(secrecion_conjuntival),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_secrecion_conjuntival,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('Secrecion conjuntival:
1. tome una muestra por cada ojo con
escobillones separados, previamente humedecidos con solucion
salina. 
2. Rote el escobillon en cada conjuntiva
3. coloque un escobillon en el medio de transporte o en tubo esteril seco con
tapa rosca o tapon de caucho y con el otro realice extendido en lamina de vidrio.').          
oticasR13:-
          
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_ocular),
                not(muestra_recolectada_fuera),
                muestra(secrecion_conjuntival),
                tecnica(secrecion_conjuntival),
                materiales(secrecion_conjuntival),
                transportar_muestra,nl,
                write('---------------------------------------------'),nl,
                write('Tiempo que debe esperar despues de recolectarlo: inmediatamente
temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: Frasco de rosca ancha'),
                retractall(procedimiento(oticas_oculares_dentales)).
oticasR15:-
                procedimiento(oticas_oculares_dentales),
                tipoMuestra(secrecion_ocular),
                materiales(secrecion_conjuntival),
                not(cuidados_y_recomendaciones),
                not(muestra(secrecion_conjuntival)),
                not(tecnica(secrecion_conjuntival)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_secrecion_conjuntival,
retractall(procedimiento(oticas_oculares_dentales)).
oticasR8_8:-
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_ocular),
                muestra_recolectada_fuera,
                muestra_recolectada_inmediatamente,
                not(muestra(secrecion_conjuntival)),
                write('----------------------------------------------'),nl,
                write('---Transporte Muestra secrecion_ocular---'),nl,
                write('-----------------------------------------------'),nl,
                write('temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: Frasco de rosca ancha'),
 retractall(procedimiento(oticas_oculares_dentales)).

oticasR16:-
                procedimiento(oticas_oculares_dentales),
                tipoMuestra(secrecion_oido),
                cuidados_y_recomendaciones,
                muestra_recolectada_fuera,
                not(muestra_recolectada_inmediatamente),
                retractall(muestra_recolectada_fuera),
                write('desechar muestra y tomar una nueva en las instalaciones'),nl.
oticasR17:-     
                procedimiento(oticas_oculares_dentales),
                tipoMuestra(secrecion_oido),
                cuidados_y_recomendaciones,
                muestra(secrecion_oido),
                not(muestra_recolectada_fuera),
                not(tecnica(secrecion_oido)),
                asserta(tecnica(secrecion_oido)).
oticasR18:-     
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_oido),
                muestra(secrecion_oido),
                tecnica(secrecion_oido),
                not(muestra_recolectada_fuera),
                not(materiales(secrecion_oido)),
                asserta(materiales(secrecion_oido)).   
oticasR19:-  
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_oido),
                muestra(secrecion_oido),
                tecnica(secrecion_oido),
                materiales(secrecion_oido),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_secrecion_oido,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('Secrecion de oido:
1.Este procedimiento lo debe realizar un medico especialista.
2.No se recomienda toma de muestras con escobillon rotado en otitis media o externas supurativas.
3.De ser posible la muestra debe ser tomada con ayuda de
microscopio por otorrinolaringologo.
4.Si la membrana timpanica esta intacta se hara con puncion
timpanica en casos de otalgia intensa, paciente inmunosuprimido, neonato.
5.La toma por escobillon cuando hay otorrea esta sujeta a mayor contaminacion externa, no ayuda mucho y por el
contrario, confunde a quien no sabe como interpretar los resultados.').
             
oticasR20:-
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_oido),
                not(muestra_recolectada_fuera),
                muestra(secrecion_oido),
                tecnica(secrecion_oido),
                materiales(secrecion_oido),
                transportar_muestra,nl,
                write('---------------------------------------------'),nl,
                write('Tiempo que debe esperar despues de recolectarlo: inmediatamente
temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: Frasco de rosca ancha'),
                retractall(procedimiento(oticas_oculares_dentales)).
         

oticasR22:-
                procedimiento(oticas_oculares_dentales),
                tipoMuestra(secrecion_oido),
                materiales(secrecion_oido),
                not(cuidados_y_recomendaciones),
                not(muestra(secrecion_oido)),
                not(tecnica(secrecion_oido)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_secrecion_oido,
retractall(procedimiento(oticas_oculares_dentales)).
oticasR18_18:-
                procedimiento(oticas_oculares_dentales),
                cuidados_y_recomendaciones,
                tipoMuestra(secrecion_oido),
                muestra_recolectada_fuera,
                muestra_recolectada_inmediatamente,
                not(muestra(secrecion_oido)),
                write('----------------------------------------------'),nl,
                write('---Transporte Muestra secrecion_oido---'),nl,
                write('-----------------------------------------------'),nl,
                write('temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: Frasco de rosca ancha'),
 retractall(procedimiento(oticas_oculares_dentales)).

hongos:-
        respuestadesicion(1),
        respuesta(1),
        write('-----------------------------------'),nl,
        write('-MUESTRAS PARA DETECCION DE HONGOS-'),nl,
        write('-----------------------------------'),nl,
        write('-------LIQUIDOS Y FLUIDOS CORPORALES-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
        write('En micosis subcutanea se puede obtener diferente material 
entre los que se encuentra pus o exudados de lesiones que 
drenen.'),nl,
        write('Si hay sospecha de esporotricosis se debe dejar una gasa durante 
24 horas para recoger el material a examinar o toma de biopsia 
por dermatOlogo'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('¿se tuvieron en cuenta las recomendaciones?(s/n):'),
        asserta(tipoMuestra(liquidos_fluidos_corporales)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.

hongos:-
        respuestadesicion(2),
        respuesta(1),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(liquidos_fluidos_corporales)),
        write('-----------------------------------------'),nl,
        write('---------------MATERIALES----------------'),nl,
        write('-----------------------------------------'),nl,
        write('la muestra es de: '),nl,
        write('1.abceso.'),nl,
        write('2.lesiones abiertas.'),nl,
        write('Elija una opcion: '),
        read(R),
        ((R==1 -> asserta(materiales(abceso)));
        (R==2 -> asserta(materiales(lesiones_abiertas)))),
        evaluar.
hongos:-
        respuestadesicion(1),
        respuesta(2),
        write('-----------------------------------'),nl,
        write('-MUESTRAS PARA DETECCION DE HONGOS-'),nl,
        write('-----------------------------------'),nl,
        write('-------LESIONES DESCAMATIVAS-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
        write('lapso de tiempo para entregar muestra: inmediatamente '),nl,
        write('para el paciente: '),nl,
        write('1.No aplicar ningun tratamiento fungico oral o topico por lo menos 3 dias antes.'),nl,
        write('2.No aplicar cremas, ungüentos o polvos en el sitio de la toma de la muestra.'),nl,
        write('Para el auxiliar: '),nl,
        write('1.La toma de la muestra debe ser  realizada por personal experto.'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('¿el paciente siguio las recomendaciones?(s/n):'),
        asserta(tipoMuestra(lesiones_descamativas)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.
hongos:-
        respuestadesicion(2),
        respuesta(2),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(lesiones_descamativas)),
        write('-----------------------------------------'),nl,
        write('---------------MATERIALES----------------'),nl,
        write('-----------------------------------------'),nl,
        write('la muestra es de: '),nl,
        write('1.lesiones secas.'),nl,
        write('2.lesiones humedas.'),nl,
        write('Elija una opcion: '),
        read(R),
        ((R==1 -> asserta(materiales(lesiones_secas)));
        (R==2 -> asserta(materiales(lesiones_humedas)))),
        evaluar.
        
hongos:-
        respuestadesicion(1),
        respuesta(5),
        write('-----------------------------------'),nl,
        write('-MUESTRAS PARA DETECCION DE HONGOS-'),nl,
        write('-----------------------------------'),nl,
        write('-------CUERO CABELLUDO Y PELO-------'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
        write('lapso de tiempo para entregar muestra: en menos de 1 hora '),nl,
        write('para el paciente: '),nl,
        write('1.No aplicar ningun tratamiento fungico oral o topico por lo menos 3 dias antes.'),nl,
        write('2.No aplicar cremas, ungüentos o polvos en el sitio de la toma de la muestra.'),nl,
        write('Para el auxiliar: '),nl,
        write('1.La toma de la muestra debe ser  realizada por personal experto.'),nl,
        write('2.Raspar los bordes activos de la lesion.'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('¿el paciente siguio las recomendaciones?(s/n):'),
        asserta(tipoMuestra(cuero_cabelludo_pelo)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.


hongos:-
        respuestadesicion(2),
        respuesta(5),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(cuero_cabelludo_pelo)),
        write('-----------------------------------------'),nl,
        write('---------------MATERIALES----------------'),nl,
        write('-----------------------------------------'),nl,
        write('la muestra es de: '),nl,
        write('1.cuero cabelludo.'),nl,
        write('2.pelo.'),nl,
        write('Elija una opcion: '),
        read(R),
        ((R==1 -> asserta(materiales(cuero_cabelludo)));
        (R==2 -> asserta(materiales(pelo)))),
        evaluar.
hongos:-
        respuestadesicion(1),
        respuesta(6),
        write('-----------------------------------'),nl,
        write('-MUESTRAS PARA DETECCION DE HONGOS-'),nl,
        write('-----------------------------------'),nl,
        write('-------PIEL, COSTRAS Y ESCAMAS-----'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('Cuidados y recomendaciones: '),nl,
        write('lapso de tiempo para entregar muestra: en menos de 1 hora '),nl,
        write('para el paciente: '),nl,
        write('1.No aplicar ningun tratamiento fungico oral o topico por lo menos 8 dias antes.'),nl,
        write('2.No aplicar cremas, ungüentos o polvos en el sitio de la toma de la muestra.'),nl,
        write('Para el auxiliar: '),nl,
        write('1.Lave bien el sitio de la lesion, con agua y con jabon, y luego 
con solucion salina, utilizando gasa; no use algodon.
2.deje secar.'),nl,
        write('--------------------------------------------------------------------------'),nl,
        write('¿el paciente siguio las recomendaciones?(s/n):'),
        asserta(tipoMuestra(piel_costras_escamas)),
        asserta(muestra(piel_costras_escamas)),
        read(R),
        retractall(respuesta(_)),
        retractall(respuestadesicion(_)),
        asserta(respuesta(R)),
        recomendaciones.


hongos:-
        respuestadesicion(2),
        respuesta(6),
        retractall(respuestadesicion(_)),
        asserta(tipoMuestra(piel_costras_escamas)),
        asserta(materiales(piel_costras_escamas)),
        evaluar.

recomendaciones:-
                respuesta(s),
                asserta(cuidados_y_recomendaciones),
                recolectada.
recomendaciones:-
                respuesta(n),
                write('REAGENDE LA MUESTRA PORFAVOR.'),nl,
                write('DAR RECOMENDACIONES.').
                
recolectada:-
                write('¿la muestra fue recolectada fuera de las instalaciones?(s/n):'),
                read(R),
                retractall(respuesta(_)),
                asserta(respuesta(R)),
                rrecolectada.
rrecolectada:-
                respuesta(s),
                asserta(muestra_recolectada_fuera),
                write('¿La muestra fue recolectada dentro del lapso de tiempo?(s/n): '),
                read(R),
                retractall(respuesta(_)),
                asserta(respuesta(R)),
                rtiempo.
rrecolectada:-
                respuesta(n),
                evaluar.
rtiempo:-
        respuesta(s),
        asserta(muestra_recolectada_inmediatamente),
        evaluar.
rtiempo:-
        respuesta(n),
        evaluar.
hongosR1:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(lesiones_descamativas),
                cuidados_y_recomendaciones,
                muestra_recolectada_fuera,
                not(muestra_recolectada_inmediatamente),
                retractall(muestra_recolectada_fuera),
                write('desechar muestra y tomar una nueva en las instalaciones'),nl.
hongosR2:-
        procedimiento(deteccion_de_hongos),
        tipoMuestra(lesiones_descamativas),
        cuidados_y_recomendaciones,
        not((muestra(lesiones_secas);muestra(lesiones_humedas))),
        not(muestra_recolectada_fuera),
        not(muestra_recolectada_inmediatamente),
        write('la muestra es de: '),nl,
        write('1.lesiones secas.'),nl,
        write('2.lesiones humedas.'),nl,
        write('Elija una opcion: '),
        read(R),
        
        ((R==1 -> write('entra a añadir lesiones secas'),
                asserta(muestra(lesiones_secas)));(R==2 ->write('entrada añadir lesiones humedas'),asserta(muestra(lesiones_humedas)))),
                evaluar.

hongosR3:-     
                procedimiento(deteccion_de_hongos),
                tipoMuestra(lesiones_descamativas),
                cuidados_y_recomendaciones,
                muestra(lesiones_secas),
                not(muestra_recolectada_fuera),
                not(tecnica(lesiones_secas)),
                asserta(tecnica(lesiones_secas)).
hongosR4:-

                procedimiento(deteccion_de_hongos),
                tipoMuestra(lesiones_descamativas),
                cuidados_y_recomendaciones,
                muestra(lesiones_humedas),
                not(tecnica(lesiones_humedas)),
                not(muestra_recolectada_fuera),
                asserta(tecnica(lesiones_humedas)).
hongosR5:-
                
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(lesiones_descamativas),
                muestra(lesiones_secas),
                tecnica(lesiones_secas),
                not(muestra_recolectada_fuera),
                not(materiales(lesiones_secas)),
                asserta(materiales(lesiones_secas)).
hongosR6:-
               
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(lesiones_descamativas),
                muestra(lesiones_secas),
                tecnica(lesiones_secas),
                materiales(lesiones_secas),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_lesiones_secas,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('1.Limpiar la zona afectada solucion salina.
2.raspar los bordes de la lesion y de varios sitios con el bisturi esteril.
3.depositelos en frasco de tapa rosca.
4.Las muestras recolectadas serviran para cultivo y realizar la prueba de KOH.').

hongosR7:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(lesiones_descamativas),
                tecnica(lesiones_humedas),
                not(muestra_recolectada_fuera),
                not(materiales(lesiones_humedas)),
                asserta(materiales(lesiones_humedas)).

                
hongosR8:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(lesiones_descamativas),
                tecnica(lesiones_humedas),
                materiales(lesiones_humedas),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_lesiones_humedas,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('1.Limpiar la zona afectada solucion salina.
2.dejar secar. 
3.obtenga la muestra con un escobillon de dacron 
4.depositelos en frasco de tapa rosca.
5.Las muestras recolectadas serviran para cultivo y realizar la prueba de KOH.').

                
hongosR9:-
          
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(lesiones_descamativas),
                not(muestra_recolectada_fuera),
                (muestra(lesiones_secas);muestra(lesiones_humedas)),
                (tecnica(lesiones_secas); tecnica(lesiones_humedas)),
                (materiales(lesiones_secas);materiales(lesiones_humedas)),
                transportar_muestra,nl,
                write('---------------------------------------------'),nl,
                write('Tiempo que debe esperar despues de recolectarlo: inmediatamente
temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: Frasco de rosca ancha'),
                retractall(procedimiento(deteccion_de_hongos)).
         

hongosR11:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(lesiones_descamativas),
                materiales(lesiones_secas),
                not(cuidados_y_recomendaciones),
                not(muestra(lesiones_secas)),
                not(tecnica(lesiones_secas)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_lesiones_secas,
retractall(procedimiento(deteccion_de_hongos)).

hongosR12:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(lesiones_descamativas),
                materiales(lesiones_humedas),
                not(cuidados_y_recomendaciones),
                not(muestra(lesiones_humedas)),
                not(tecnica(lesiones_humedas)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_lesiones_humedas,
retractall(procedimiento(deteccion_de_hongos)).

hongosR5_5:-

                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(lesiones_descamativas),
                muestra_recolectada_fuera,
                muestra_recolectada_inmediatamente,
                not(muestra(lesiones_secas)),
                not(muestra(lesiones_humedas)),
                write('----------------------------------------------'),nl,
                write('---Transporte Muestra lesiones descamativas---'),nl,
                write('-----------------------------------------------'),nl,
                write('temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: Frasco de rosca ancha'),
                retractall(procedimiento(deteccion_de_hongos)).

hongosR13:-
               
                procedimiento(deteccion_de_hongos),
                tipoMuestra(liquidos_fluidos_corporales),
                cuidados_y_recomendaciones,
                muestra_recolectada_fuera,
                retractall(muestra_recolectada_fuera),
                write('desechar muestra y tomar una nueva en las instalaciones'),nl.
hongosR14:-
        procedimiento(deteccion_de_hongos),
        tipoMuestra(liquidos_fluidos_corporales),
        cuidados_y_recomendaciones,
        not((muestra(abceso);muestra(lesiones_abiertas))),
        not(muestra_recolectada_fuera),
        not(muestra_recolectada_inmediatamente),
        write('la muestra es de: '),nl,
        write('1.abceso.'),nl,
        write('2.lesiones abiertas.'),nl,
        write('Elija una opcion: '),
        read(R),
        
        ((R==1 -> asserta(muestra(abceso)));
        (R==2 ->  asserta(muestra(lesiones_abiertas)))),
        evaluar.

hongosR15:-  
                procedimiento(deteccion_de_hongos),
                tipoMuestra(liquidos_fluidos_corporales),
                cuidados_y_recomendaciones,
                muestra(abceso),
                not(muestra_recolectada_fuera),
                not(tecnica(abceso)),
                asserta(tecnica(abceso)).
hongosR18:-

                procedimiento(deteccion_de_hongos),
                tipoMuestra(liquidos_fluidos_corporales),
                cuidados_y_recomendaciones,
                muestra(lesiones_abiertas),
                not(tecnica(lesiones_abiertas)),
                not(muestra_recolectada_fuera),
                asserta(tecnica(lesiones_abiertas)).

hongosR16:-
                
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(liquidos_fluidos_corporales),
                muestra(abceso),
                tecnica(abceso),
                not(muestra_recolectada_fuera),
                not(materiales(abceso)),
                asserta(materiales(abceso)).
                
hongosR17:-
               
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(liquidos_fluidos_corporales),
                muestra(abceso),
                tecnica(abceso),
                materiales(abceso),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_abceso,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('Si la coleccion se presenta como un absceso se debe aspirar con jeringa y aguja esteriles').

hongosR19:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(liquidos_fluidos_corporales),
                tecnica(lesiones_abiertas),
                not(muestra_recolectada_fuera),
                not(materiales(lesiones_abiertas)),
                asserta(materiales(lesiones_abiertas)).

                
hongosR20:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(liquidos_fluidos_corporales),
                tecnica(lesiones_abiertas),
                materiales(lesiones_abiertas),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_lesiones_abiertas,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('Si la secrecion esta en una lesion abierta se toma la muestra con escobillon esteril preferiblemente de dacron.').

                
hongosR21:-
          
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(liquidos_fluidos_corporales),
                not(muestra_recolectada_fuera),
                (muestra(abceso);muestra(lesiones_abiertas)),
                (tecnica(abceso); tecnica(lesiones_abiertas)),
                (materiales(abceso);materiales(lesiones_abiertas)),
                transportar_muestra,nl,
                write('---------------------------------------------'),nl,
                write('Tiempo que debe esperar despues de recolectarlo: inmediatamente
temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: tubo esteril'),
                retractall(procedimiento(deteccion_de_hongos)).
         

hongosR24:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(liquidos_fluidos_corporales),
                materiales(abceso),
                not(cuidados_y_recomendaciones),
                not(muestra(abceso)),
                not(tecnica(abceso)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_abceso,
retractall(procedimiento(deteccion_de_hongos)).

hongosR23:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(liquidos_fluidos_corporales),
                materiales(lesiones_abiertas),
                not(cuidados_y_recomendaciones),
                not(muestra(lesiones_abiertas)),
                not(tecnica(lesiones_abiertas)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_lesiones_abiertas,
retractall(procedimiento(deteccion_de_hongos)).
hongosR17_17:-

                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(liquidos_fluidos_corporales),
                muestra_recolectada_fuera,
                muestra_recolectada_inmediatamente,
                not(muestra(abceso)),
                not(muestra(lesiones_abiertas)),
                write('------------------------------------------------'),nl,
                write('Transporte Muestra liquidos y fluidos corporales'),nl,
                write('-------------------------------------------------'),nl,
                write('temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: tubo esteril'),
                retractall(procedimiento(deteccion_de_hongos)).

hongosR31:-
               
                procedimiento(deteccion_de_hongos),
                tipoMuestra(cuero_cabelludo_pelo),
                cuidados_y_recomendaciones,
                muestra_recolectada_fuera,
                retractall(muestra_recolectada_fuera),
                write('desechar muestra y tomar una nueva en las instalaciones'),nl.
hongosR32:-
        procedimiento(deteccion_de_hongos),
        tipoMuestra(cuero_cabelludo_pelo),
        cuidados_y_recomendaciones,
        not((muestra(cuero_cabelludo);muestra(pelo))),
        not(muestra_recolectada_fuera),
        not(muestra_recolectada_inmediatamente),
        write('la muestra es de: '),nl,
        write('1.cuero cabelludo.'),nl,
        write('2.pelo.'),nl,
        write('Elija una opcion: '),
        read(R),
        
        ((R==1 -> asserta(muestra(cuero_cabelludo)));
        (R==2 ->  asserta(muestra(pelo)))),
        evaluar.

hongosR33:-  
                procedimiento(deteccion_de_hongos),
                tipoMuestra(cuero_cabelludo_pelo),
                cuidados_y_recomendaciones,
                muestra(cuero_cabelludo),
                not(muestra_recolectada_fuera),
                not(tecnica(cuero_cabelludo)),
                asserta(tecnica(cuero_cabelludo)).
hongosR34:-

                procedimiento(deteccion_de_hongos),
                tipoMuestra(cuero_cabelludo_pelo),
                cuidados_y_recomendaciones,
                muestra(pelo),
                not(tecnica(pelo)),
                not(muestra_recolectada_fuera),
                asserta(tecnica(pelo)).

hongosR35:-
                
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(cuero_cabelludo_pelo),
                muestra(cuero_cabelludo),
                tecnica(cuero_cabelludo),
                not(muestra_recolectada_fuera),
                not(materiales(cuero_cabelludo)),
                asserta(materiales(cuero_cabelludo)).
                
hongosR36:-
               
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(cuero_cabelludo_pelo),
                muestra(cuero_cabelludo),
                tecnica(cuero_cabelludo),
                materiales(cuero_cabelludo),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_cuero_cabelludo_pelo,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('1.En afecciones del cuero cabelludo, retire con pinzas los cabellos sin brillo, quebradizos.
2.recolecte la muestra en frasco esteril
3.lleve a siembra en una caja de Petri ').

hongosR37:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(cuero_cabelludo_pelo),
                tecnica(pelo),
                not(muestra_recolectada_fuera),
                not(materiales(pelo)),
                asserta(materiales(pelo)).

                
hongosR38:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(cuero_cabelludo_pelo),
                tecnica(pelo),
                materiales(pelo),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_cuero_cabelludo_pelo,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('1.Obtenga escamas, costras o partes del cabello afectado.
2.recoja material de los bordes de las lesiones.
3.recolecte la muestra en frasco esteril.
4.lleve a siembra en una caja de Petri.').

                
hongosR39:-
          
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(cuero_cabelludo_pelo),
                not(muestra_recolectada_fuera),
                (muestra(cuero_cabelludo);muestra(pelo)),
                (tecnica(cuero_cabelludo); tecnica(pelo)),
                (materiales(cuero_cabelludo);materiales(pelo)),
                transportar_muestra,nl,
                write('---------------------------------------------'),nl,
                write('Tiempo que puede esperar despues de recolectarlo: maximo 1 hora
temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: frasco de tapa rosca'),
                retractall(procedimiento(deteccion_de_hongos)).
         

hongosR41:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(cuero_cabelludo_pelo),
                (materiales(cuero_cabelludo);materiales(pelo)),
                not(cuidados_y_recomendaciones),
                not(muestra(cuero_cabelludo)),
                not(tecnica(cuero_cabelludo)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_cuero_cabelludo_pelo,
retractall(procedimiento(deteccion_de_hongos)).

hongosR36_36:-

                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(cuero_cabelludo_pelo),
                muestra_recolectada_fuera,
                muestra_recolectada_inmediatamente,
                not(muestra(cuero_cabelludo)),
                not(muestra(pelo)),
                write('------------------------------------------------'),nl,
                write('Transporte Muestra cuero cabelludo y pelo'),nl,
                write('-------------------------------------------------'),nl,
                write('temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: tapa rosca'),
                retractall(procedimiento(deteccion_de_hongos)).

hongosR42:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(piel_costras_escamas),
                cuidados_y_recomendaciones,
                muestra_recolectada_fuera,
                retractall(muestra_recolectada_fuera),
                write('desechar muestra y tomar una nueva en las instalaciones'),nl.
hongosR43:-

                procedimiento(deteccion_de_hongos),
                tipoMuestra(piel_costras_escamas),
                cuidados_y_recomendaciones,
                muestra(piel_costras_escamas),
                not(tecnica(piel_costras_escamas)),
                not(muestra_recolectada_fuera),
                asserta(tecnica(piel_costras_escamas)).
hongosR44:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(piel_costras_escamas),
                tecnica(piel_costras_escamas),
                not(muestra_recolectada_fuera),
                not(materiales(piel_costras_escamas)),
                asserta(materiales(piel_costras_escamas)).    
hongosR45:-
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(piel_costras_escamas),
                tecnica(piel_costras_escamas),
                materiales(piel_costras_escamas),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                asserta(transportar_muestra),
                imprimir_materiales_piel_costras_escamas,nl,
                write('------------------------------------------------------------'),nl,
                write('Pasos para realizar la toma:'),nl,
                write('1.Con bisturi esteril raspe el borde de la lesion y recoja el material que se desprende. 
2.Recoja las costras o escamas con pinzas esteriles. 
3.Coloque el material raspado, las costras o escamas en frasco esteril de tapa rosca.
4.lleve a siembra en una caja de Petri.').         
hongosR46:-
          
                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(piel_costras_escamas),
                not(muestra_recolectada_fuera),
                muestra(piel_costras_escamas),
                tecnica(piel_costras_escamas),
                materiales(piel_costras_escamas),
                transportar_muestra,nl,
                write('---------------------------------------------'),nl,
                write('Tiempo que puede esperar despues de recolectarlo: maximo 1 hora
temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: frasco esteril de tapa rosca'),
                retractall(procedimiento(deteccion_de_hongos)).
         
hongosR48:-
                procedimiento(deteccion_de_hongos),
                tipoMuestra(piel_costras_escamas),
                materiales(piel_costras_escamas),
                not(cuidados_y_recomendaciones),
                not(muestra(piel_costras_escamas)),
                not(tecnica(piel_costras_escamas)),
                not(muestra_recolectada_fuera),
                not(transportar_muestra),
                imprimir_materiales_piel_costras_escamas,
retractall(procedimiento(deteccion_de_hongos)).

hongosR44_44:-

                procedimiento(deteccion_de_hongos),
                cuidados_y_recomendaciones,
                tipoMuestra(piel_costras_escamas),
                muestra_recolectada_fuera,
                muestra_recolectada_inmediatamente,
                not(muestra(piel_costras_escamas)),
                write('------------------------------------------------'),nl,
                write('Transporte Muestra cuero cabelludo y piel_costras_escamas'),nl,
                write('-------------------------------------------------'),nl,
                write('temperatura adecuada para mantener la muestra: de 15°C a 25°C
Transporte: tapa rosca'),
                retractall(procedimiento(deteccion_de_hongos)).
evaluar :-
    aplicar_reglas, 
    not(procedimiento(_)), nl,
    write('Completado.'), nl.

aplicar_reglas :-
    (hongosR1,!;hongosR2,!;hongosR3,!;hongosR4,!;hongosR5,!;hongosR5_5,!;hongosR6,!;hongosR7,!;hongosR8,!;hongosR9,!;hongosR11,!;hongosR12,!
    ;hongosR13,!;hongosR14,!;hongosR15,!;hongosR16,!;hongosR17,!;hongosR17_17,!;hongosR18,!;hongosR19,!;hongosR20,!;hongosR21,!;hongosR23,!;hongosR24,!
    ;hongosR31,!;hongosR32,!;hongosR33,!;hongosR34,!;hongosR35,!;hongosR36,!;hongosR37,!;hongosR38,!;hongosR39,!;hongosR41,!;hongosR24,!;hongosR36_36,!
    ;hongosR42,!;hongosR43,!;hongosR44,!;hongosR44_44,!;hongosR45,!;hongosR46,!;hongosR48,!
    ;oticasR1, !;oticasR4, !;oticasR8, !;oticasR8_8, !;oticasR9, !;oticasR13, !;oticasR15,!
    ; oticasR16, !;   oticasR17, !;   oticasR18, !;   oticasR18_18, !;   oticasR19, !;   oticasR20, !;   oticasR22, !
    ;sangreR1, !;sangreR2, !;sangreR3, !;sangreR4, !;sangreR5, !;sangreR6, !;sangreR7
    ),
    aplicar_reglas. 
aplicar_reglas.

imprimir_materiales_lesiones_secas:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras lesiones secas:'),nl,
write('1.solucion salina.
2.guantes esteriles.
3.gasas esteriles.
4.bisturi esteril, lanseta o lamina de vidrio.
5.frasco de tapa rosca.
6.caja de petri.
7.mechero').
imprimir_materiales_lesiones_humedas:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras lesiones humedas:'),nl,
write('1.solucion salina.
2.guantes esteriles.
3.gasas esteriles.
4.escobillon de dacron.
5.frasco de tapa rosca.
6.caja de petri.
7.mechero').
imprimir_materiales_lesiones_abiertas:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras lesiones abiertas:'),nl,
write('1.mascarilla.
2.guantes esteriles.
3.gasas esteriles.
4.escobillon de dacron.
5.tubo esteril').
imprimir_materiales_abceso:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras abceso:'),nl,
write('1.mascarilla.
2.guantes esteriles.
3.gasas esteriles.
4.jeringa esteril.
5.tubo esteril').
imprimir_materiales_cuero_cabelludo_pelo:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras de cuero cabelludo o pelo:'),nl,
write('1.usar cajas de Petri.
2.equipo esteril con pinzas.
3.guantes.
4.tijeras.
5.frasco tapa rosca').
imprimir_materiales_piel_costras_escamas:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras de piel costras y escamas:'),nl,
write('1.tijeras.
2.guantes.
3.tapa bocas.
4.caja de petri.
5.frasco esteril de tapa rosca').
imprimir_materiales_secrecion_conjuntival:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras secrecion conjuntival:'),nl,
write('1. Guantes esteriles
2. Escobillones esteriles
3. jeringa
4. agujas esteriles
5. lamina de vidrio
').
imprimir_materiales_secrecion_oido:-
write('-------------------------------------------------------------'),nl,
write('Materiales para muestras raspado corneal:'),nl,
write('1.Guantes no esteriles.
2.Solucion antiseptica.
3.Medio de transporte y lamina de vidrio.
').