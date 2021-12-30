

insert into categoria(niveldificultad,premio)
values (1, 100);
insert into categoria(niveldificultad,premio)
values (2, 200);
insert into categoria(niveldificultad,premio)
values (3, 300);
insert into categoria(niveldificultad,premio)
values (4, 400);
insert into categoria(niveldificultad,premio)
values (5, 500);


insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(1,"¿Cuánto dura un partido de fútbol?",1);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(1,"¿Cuántos jugadores por equipo juegan un partido de futbol?" ,2);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(1,"¿Cuántos jugadores por equipo juegan un partido de basketball? " ,3);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(1,"¿A qué deporte juega Cristiano Ronaldo?" ,4);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(1,"¿Cuántos tiempos se juegan en un partido de futbol?" ,5);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(2,"¿En qué equipo se hizo famoso Lionel Messi?" ,6);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(2,"¿Cuánto dura la prórroga en un partido de fútbol?" ,7);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(2,"¿Qué equipo de fútbol es de Argentina?" ,8);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(2,"¿A qué deporte juega Roger Federer?" ,9);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(2,"¿El balón de que deporte no es redondo? " ,10);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(3,"¿En qué ciudad se encuentra el famoso estadio La Bombonera?" ,11);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(3,"¿Quién es el máximo goleador del FC Barcelona?" ,12);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(3,"¿De qué país es el equipo de fútbol Bayern Munich?" ,13);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(3,"¿De qué país es el equipo de fúlbol River Plate?" ,14);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(3,"¿Qué país ha ganado 5 copas del mundo?" ,15);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(4,"¿En qué club italiano jugó Diego Maradona?" ,16);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(4,"¿Cuántos Grand Slam existen en el tenis?" ,17);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(4,"¿Lebron James en un jugador de que deporte?" ,18);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(4,"¿Qué número de camiseta lleva tradicionalmente el arquero en el futbol?" ,19);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(4,"¿Cuánto dura un partido de Rugby?" ,20);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(5,"¿A qué deporte pertenece el córner corto?" ,21);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(5,"Edson Arantes do Nascimento fue un jugador de futbol más conocido como:" ,22);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(5,"¿Qué equipo ha ganado más Champions League en la historia?" ,23);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(5,"Michael Phelps en qué deporte se desempeñó:" ,24);
insert into pregunta(categoria_niveldificultad,contenidopregunta,numpregunta)
	   values(5,"¿Qué equipo de la Premier League tiene más ligas ganadas?" ,25);



insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("90 minutos",True,1,1,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("40 minutos",False,2,1,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("120 minutos",False,3,1,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("80 minutos",False,4,1,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("22 jugadores",False,5,2,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("5 jugadores",False,6,2,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("11 jugadores",True,7,2,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("15 jugadores",False,8,2,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("8 jugadores",False,9,3,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("5 jugadores",True,10,3,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("3 jugadores",False,11,3,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("10 jugadores",False,12,3,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Formula 1",False,13,4,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Basketball",False,14,4,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Fútbol",True,15,4,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Tenis",False,16,4,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("1 tiempo",False,17,5,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("4 tiempos",False,18,5,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("3 tiempos",False,19,5,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("2 tiempos",True,20,5,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("FC Barcelona",True,21,6,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Real Madrid",False,22,6,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Manchester City",False,23,6,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Boca Juniors",False,24,6,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("15 minutos",False,25,7,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("30 minutos",True,26,7,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("40 minutos",False,27,7,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("20 minutos",False,28,7,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Palmeiras",False,29,8,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Peñarol",False,30,8,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Atlético Paranaense",False,31,8,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Boca Juniors",True,32,8,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Rugby",False,33,9,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Fútbol",False,34,9,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Tenis",True,35,9,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Esgrima",False,36,9,4);



insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Rugby",True,37,10,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Fútbol",False,38,10,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Tenis",False,39,10,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Basketball",False,40,10,4);



insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Mendoza",False,41,11,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Buenos Aires",True,42,11,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Catamarca",False,43,11,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Montevideo",False,44,11,4);



insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Neymar",False,45,12,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Lionel Messi",True,46,12,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Andrés Iniesta",False,47,12,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Gerard Piqué",False,48,12,4);



insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Rusia",False,49,13,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Argentina",False,50,13,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Alemania",True,51,13,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Inglaterra",False,52,13,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Rusia",False,53,14,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Argentina",True,54,14,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Alemania",False,55,14,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Inglaterra",False,56,14,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Italia",False,57,15,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Argentina",False,58,15,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Alemania",False,59,15,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Brasil",True,60,15,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Juventus",False,61,16,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Milan",False,62,16,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Napoli",True,63,16,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Lazio",False,64,16,4);



insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("4 Grand Slam",True,65,17,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("5 Grand Slam",False,66,17,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("3 Grand Slam",False,67,17,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("6 Grand Slam",False,68,17,4);



insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Basketball",True,69,18,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Fútbol",False,70,18,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Tenis",False,71,18,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Esgrima",False,72,18,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("La número 3",False,73,19,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("La número 1",True,74,19,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("La número 10",False,75,19,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("La número 5",False,76,19,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("100 minutos",False,77,20,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("80 minutos",True,78,20,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("90 minutos",False,79,20,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("120 minutos",False,80,20,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Voleyball",False,81,21,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Basketball",False,82,21,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Fútbol",False,83,21,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Hockey sobre césped",True,84,21,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Pelé",True,85,22,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Maradona",False,86,22,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Garrincha",False,87,22,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Rivaldo",False,88,22,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Real Madrid",True,89,23,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("FC Barcelona",False,90,23,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Bayern Munich",False,91,23,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Marchester United",False,92,23,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Remo",False,93,24,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Esgrima",False,94,24,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Natación",True,95,24,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Atletismo",False,96,24,4);


insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Liverpool",False,97,25,1);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Manchester City",False,98,25,2);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Chelsea FC",False,99,25,3);
insert into respuesta(contenidorespuesta,correcta,id,pregunta_numpregunta,respuestanumero)
	   values("Marchester United",True,100,25,4);
























