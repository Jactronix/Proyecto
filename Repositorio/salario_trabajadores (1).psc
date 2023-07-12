//Programa que permite darle al usuario ingresar trabajadores y que a cada trabajador se le dga dependiendo de las horas de trabajop y en cuento le pagan la hora, cuanto es su salario neto y su retención de fuente más el descuento
//Autores: Jacobo Leal Bustamante, Juan David Londoño Manco, Samuel Upegui Cardona
// Version: 1.0
Algoritmo salario_trabajadores //Inicia el programa  que calcula el salario de los trabajadores 
	Definir Nom, respuesta, mensaje_bienvenida, mensaje_despedida Como Caracter; // Se definen las variebles nom: (nombre) y "respuesta", mensaje_bienvenida y mensaje_despedida
	definir  ht, vh, SM,STP,SNET, Snet2 Como entero;// Se definen las variables ht: (horas trabajadas), vh: (valor de hora), sm: (salario minimo), stp: (salario total a pagar),snet: (salario neto), snet2 (salario neto 2)
	definir  Rf, Rf2 Como Real;//Se definen las variables retención de fuente 1 y 2
	Escribir  "Bienvenido al programa que puede calcular el salario de los trabajadores" ; //se le da una bienvenida al usuario 
	Repetir //Se ingresa la estructura repetitiva 
	Escribir'Por favor ingrese el nombre del trabajador';  //Se muestra el nombre del trabajador
	Leer Nom; //se lee nom: nombre
	Escribir 'Por favor ingrese el número de horas trabajadas por: ', Nom; // Se  muestra el numero de horas trabajadas por cada trabajador
	Leer ht;//se lee ht: horas trabajadas
	Escribir 'Por favor ingrese el valor pagado al trabajador por hora: '; // Se muestra el valor pagado al trabajador por hora
	Leer vh; //se lee vh: valor de hora
	SNET<-ht*vh; //Se genera el algoritmo que arroja el salario neto, que para obtenerlo se tienen que multiplicar las horas trabajadas por el valor de la hora y se almacena en la variable SNET
	SM<-1000000; //Se  genera el salario minimo y se almacena en la variable SM
	Rf<-0.02;// Se genera la retención de fuente y se almacena en la variable Rf
	Rf2<-0.10;// Se genera la retención de fuente de más de dos salarios mínimos y se guarda en la variable Rf2
	SNET<-ht*vh; //se general el Algoritmo del salario neto y se almacena en la variable SNET
    Snet2<-(ht*vh);//Se genera el Algoritmo  de salario neto 2 y se almacena en la variable Snet2
	Rf<-SNET*Rf; //Se genera el algoritmo de la retención de fuente y se genera en la variable Rf
	Rf2<-Snet2*Rf2;//Se genera el algoritmo de la retención de fuente 2  y se genera en la variable Rf2
	Escribir 'El salario neto es: ',SNET; //Se muestra el salario neto del trabajador 
	Si Snet>SM*2 Entonces // Se inicia la condicion si gana màs de 2 slmmlv 
		Escribir 'El descuento por retención de fuente es: ',Rf2; // Se muestra el descuento por retención de fuente
		Escribir  'El salario Total de', nom, 'es: ',Snet2-Rf2; // Se muestra el salario total del trabajador 
	SiNo //no se define el condicional sino
		Escribir 'El descuento por retennción de fuente es: ',Rf; // Se muestra el descuento de retención de fuente si no gana más de dos salarios minimos vigentes
		Escribir 'El salario Total de ', nom,  ' es: ',SNET-Rf; // Se muestra el salario total con el nombre del trabajador 
	FinSi //Se decalara el fin de el condicional si-entonces
	Escribir '¿Desea Ingresar otro trabajor?si/no'; // Se le pregunta al usuario si desea ingresar otro trabajador para que su salario sea calculado
		Leer respuesta; //se lee respuesta
		 
	Hasta Que respuesta='NO' o respuesta = 'no'; //Se define el fin de la estructura repetitiva
	Escribir "Gracias por usar el programa de salario_trabajadores, tenga un buen día"; //se le da un mensaje de despedida al usuario
	
FinAlgoritmo //Se finaliza el programa salario_trabajadores