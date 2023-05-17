Algoritmo horarios
	Definir hh,mm,ss,t Como entero
	Escribir "¿Cual fue la hora de salida? HH:MM:SS:"
	Escribir "HH: "
	//Leer hh
	hh=5
	Escribir "MM: "
	//Leer mm
	mm=43
	Escribir "SS: "
	//Leer ss
	ss=21
	Escribir "HH:",hh," MM:",mm," SS:",ss,"."
	Escribir "¿Tiempo de viaje?: en SS"
	Leer t
	hh=hh+TRUNC(t/3600)
	t=TRUNC(t%3600)
	mm=mm+TRUNC(t/60)
	t=TRUNC(t%60)
	ss=ss+t
	Escribir "Hora de llegada: "
	t=ss%60
	ss=TRUNC(ss/60)
	mm=mm+t
	Escribir "HH:",hh," MM:",mm," SS:",ss,"."
FinAlgoritmo