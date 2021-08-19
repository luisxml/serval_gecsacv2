PARAMETERS nroMes

mes = ''

DO CASE
	CASE nroMes = 1
	   mes = 'enero'
	   
	CASE nroMes = 2
	   mes = 'febrero'
	   
	CASE nroMes = 3
	   mes = 'marzo'
	   
	CASE nroMes = 4
	   mes = 'abril'
	   
	CASE nroMes = 5
	   mes = 'mayo'
	
	CASE nroMes = 6
	   mes = 'junio'
	   
	CASE nroMes = 7
	   mes = 'julio'
	   
	CASE nroMes = 8
	   mes = 'agosto'
	   
	CASE nroMes = 9
	   mes = 'septiembre'
	   
	CASE nroMes = 10
	   mes = 'octubre'
	
	CASE nroMes = 11
	   mes = 'noviembre'
	   
	CASE nroMes = 12
	   mes = 'diciembre'
ENDCASE

RETURN mes 