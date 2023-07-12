# Hacer un programa que permita a un usuario ingresar N cantidades de trabajadores y por cada trabajador ingresar el número de horas trabajadas y valor de la hora calcule y muestre a cada trabajador su salario neto y si este salario supera el valor de dos salarios mínimos el sistema debe calcular y mostrarle el descuento de la retención en la fuente que es del 10% del salario neto y sino la retención en la fuente será del 2% del salario neto. Deberá presentar por los datos de horas trabajadas y valor de hora de cada trabajador los siguientes cálculos:
# Salario neto = Número de horas trabajadas X Valor Hora
# Retención en la fuente = Salario neto X Porcentaje de retención en la fuente según condición.
# Salario total a pagar = Salario neto – Retención en la fuente
# El usuario también debe de ingresar el valor de N, indicando con esto cuantos trabajadores va a ingresar.
# Autor: 
#       [*] Hernández Toro Juan Carlos. 
#       [*] Leal Bustamante Jacobo.
#       [*] Machado Alzate David Alexander.
# Versión: 1.1v

print("") # Diseño y salto de linea.
print(" - "*27) # Diseño y salto de linea.
print("| �_�_�_�_�_�_�_�_�  BIENVENIDO A EMPRESAS BUSSINES-WORK  |^_^| �_�_�_�_�_�_�_� |") # Diseño y salto de linea.
print(" - "*27) # Diseño y salto de linea.
print("") # Diseño y salto de linea.
def f(PORC,a):
    retencion = Neto * (PORC/100) # Calculas la retencion con el neto y el porcentaje asignado.
    salarioTotal = Neto - retencion # Calculamos el salario total con el neto y la retencion asignada.
    run(number_t, i, list_time, Neto, retencion, salarioTotal,a) # Llamamos a la funcion run(number_t, i, list_time, Neto, retencion, salarioTotal) con los argumentos ya dados.
def number_string(N, time, Salario_min, costoTime): # Creamos un funcion con la intencion de crear un proceso para verificar si es un numero y no un valor alfanumerico.
    try: # Inicializamos el bloque de codigo try con la funcion de captura un error y manipular para seguir con el programa. 
        N, time, Salario_min, costoTime = int(N), int(time), float(Salario_min), float(costoTime) # Generamos una linea de codigo la cual indica donde podemos encontrar un error para manipularlo es decir la excepcion.
        return True # Retornamos verdadero si no se encuentra error.
    except ValueError: # Asignamos el tipo de error y escribimos a excepcion.
        return False # Retornamos falso si alparece un error el cual se manipulara.
def run(number_t, i, list_time, Neto, retencion, salarioTotal,a): # Creamos una funcion para llamar con argumentos de salida para monstrar los datos en pantalla.
    print(f"\n[+]- TRABAJADOR [#{number_t[i]+1}]: {list_name[i]} \n[*]- HORAS: {list_time[i]} \n[*]- VALOR NETO ES: {Neto} $ \n[*]- RETENCION EN LA FUENTE: {round(retencion,2)} \n[*]- SALARIO TOTAL A PAGAR: {salarioTotal} \n[*]- DESCUENTO DE RETENCION: {a}\n") # Creamos un print para monstrar los datos de salida.
    i += 1 # Creamos una variable contadora para el indice de las listas.
def error(N, time, Salario_min, costoTime): # Se crea una funcion para el manejo de errores en el ingreso de datos por referencia.
    if number_string(N, time, Salario_min, costoTime): # Generamos una estructura de desicion logica anidada para controlar el tipo de error.
        if int(time) < 0 or float(Salario_min) < 0 or float(costoTime) < 0 or int(N) < 0: # Generamos una estructura de desicion logica para controlar el tipo de error.
            print() # Diseño y salto de linea.
            print(38*"+ ") # Diseño y salto de linea.
            print(" !!! ERROR !!! ... TypeError: Por favor ingrese un valor mayor a [0] |X_X|") # Se envia mensaje al usuario indicandole cual es el error de su entrada.
            print(38*"+ ","\n") # Diseño y salto de linea.
    else: # Si la condicion de estructura logica anidada no se cumple se ejecuta la instruccion dentro del bloque.
        print() # Diseño y salto de linea.
        print(38*"+ ") # Diseño y salto de linea.
        print("!!! ERROR !!!... Por favor ingrese un valor valido [SOLO VALORES NUMERICOS] |x_x|") # Se envia mensaje al usuario indicandole cual es el error de su entrada.
        print(38*"+ ","\n") # Diseño y salto de linea.
# DATOS DE ENTRADA
list_name = [] # Generamos una lista para almacenar los nombres de cada trabajador.
list_time = [] # Generamos una lista para almacenar las horas trabajadas de cada trabajador.
number_t = [] # Lista que almacena la cantidad de trabajadores en el ciclo for.
PORC1 = "10%" # Variable que almacena el porcentaje de retencion que se da por valor.
PORC2 = "2%" # Variable que almacena el porcentaje de retencion que se da por valor.
i = 0 # Variable que funciona como contador para el indice de las listas.
a, b, c, d = "+ "*24, "- "*25, "= "*27, "* "*27   # Diseño y salto de linea.
N, time, costoTime, Salario_min = -1, -1, -1, -1 # Inicializamos un ciclo while.
while number_string(N, time, Salario_min, costoTime) == False or int(N) < 0: # Creamos un ciclo repetir para el manejo de errores.
    print("") # Diseño y salto de linea.
    print(b) # Diseño y salto de linea.
    N = input(" [?] - Ingrese la CANTIDAD de TRABAJADORES: ") # Monstramos un mensaje en pantalla la usuario el cual preguntara la cantidad de trabajadores.
    print(b) # Diseño y salto de linea.
    error(N,True,True,True) # Llamamos a la funcion para gestionar el ingreso de datos dados por el usuario.
print("") # Diseño y salto de linea.
print(d) # Diseño y salto de linea.
print("             FORMULARIO DE TRABAJADORES         ") # Diseño y salto de linea.
print(d) # FORMULARIO DE TRABAJDiseño y salto de linea.
for e in range(int(N)): # Creamos un ciclo PARA para el indice e el cual ira incrementado en cada iteracion con paso de uno hasta llegar a N .
    print("") # Diseño y salto de linea.
    print(c) # Diseño y salto de linea.
    name = input(f" [?] - Ingrese el NOMBRE del TRABAJADOR #{e+1}: ") # Monstramos un mensaje en pantalla la usuario el cual preguntara el nombre del trabajador el cual se almacena en la variable name.
    print(c) # Diseño y salto de linea.
    list_name.append(name) # Almacenas los datos de la variable nombre en la lista list_name.
    while True or time > 0: # Generamos un ciclo (Repetir) para lo siguiente (list_time y number_t) ... Teniendo en cuenta el ciclo PARA.
        print(c) # Diseño y salto de linea.
        time = input(f" [?] - Ingrese las HORAS QUE {list_name[e]} TRABAJO: ") # Monstramos un mensaje en pantalla la usuario el cual preguntara las horas  trabajadas del trabajador las cuales se almacena en la variable time.
        print(c) # Diseño y salto de linea.
        error(True,time,True,True) # Llamamos a la funcion para gestionar el ingreso de datos dados por el usuario.
        print("") # Diseño y salto de linea.
        if number_string(N, time, Salario_min, costoTime) == True and int(time) > 0: # Estructura desicion logica que verifica si se hace o no el almacenamiento de la lista lo que contiene la variable time.
            list_time.append(int(time)) # Almacenamos con ayuda del ciclo lo que contiene la variable tiem en la lista list_time.
            number_t.append(e) # Almacenamos el numero de iteraciones del ciclo en una lista.
            break # Cortamos el ciclo si la condicion se cumple.
while number_string(N, time, Salario_min, costoTime) == False or int(Salario_min) < 0: # Creamos un ciclo repetir para el manejo de errores.
    print("") # Diseño y salto de linea.
    print(b) # Diseño y salto de linea.
    Salario_min = input(" [?] - Cual es el SALARIO MINIMO actual: ") # Monstramos un mensaje en pantalla la usuario el cual preguntara el salario minimo actual.
    print(b) # Diseño y salto de linea.
    error(True,True,Salario_min,True) # Llamamos a la funcion para gestionar el ingreso de datos dados por el usuario.
while number_string(N, time, Salario_min, costoTime) == False or int(costoTime) < 0: # Creamos un ciclo repetir para el manejo de errores.
    print("") # Diseño y salto de linea.
    print(b) # Diseño y salto de linea.
    costoTime = input(" [?] - Cuanto es el COSTO por HORA de TRABAJO: ") # Monstramos un mensaje en pantalla la usuario el cual preguntara el costo por hora.
    print(b) # Diseño y salto de linea.
    error(True,True,True,costoTime) # Llamamos a la funcion para gestionar el ingreso de datos dados por el usuario.

# PROCESO Y DATOS DE SALIDA
print("") # Diseño y salto de linea.
print("* "*33) # Diseño y salto de linea.
print("|- - - - - - - - - - - LISTA DE TRABAJADORES - - - - - - - - - - |") # Diseño y salto de linea.
print("* "*33) # Diseño y salto de linea.
print("") # Diseño y salto de linea.
Salario_min = int(Salario_min)*2 # Calculamos el salrio minimo de acuerdo el problema planteado.
costoTime = int(costoTime) # Convertimos lo que contiene la variable costoTime a un valor numerico entero.
for r in number_t: # Creamos un ciclo for con el fin de monstrar las lista en pantalla con respecto a las iteraciones que haga la variable r en la lista number_t.
    Neto = list_time[int(i)]*costoTime # Calculamos el neto multiplicando el las horas trabajas y el costo por hora con ayuda del ciclo.
    Neto = int(Neto) # Convertimos las variable Neto a un valor entero numerico.
    if Neto > Salario_min: # Creamos una estructura de desicion logica con una condicion con el fin de controlar la retencion que se realizara.
        f(0.10, PORC1) # Llamamos a la funcion f().
    else:
        f(0.02, PORC2) # Llamamos a la funcion f().
    i += 1 # Creamos una variable contadora para el indice de las listas.
print("- "*40) # Se lee un mensaje al usuario el cual se motrara en pantalla.
print("            MUCHAS GRACIAS, POR USAR NUESTRO PROGRAMA BUSSINES-WORK") # Aqui se lee el mensaje para luego mostrarlo en pantalla al usuario.
print("                    QUE TENGA UN BUEN RESTO DE DiA :).                          ") # Aqui se lee el mensaje para luego mostrarlo en pantalla al usuario.
print("- "*40) # Se lee un mensaje al usuario el cual se motrara en pantalla.
