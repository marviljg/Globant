Algoritmo ej_4
    Definir vectorA, vectorB, vectorC, entry, tamanio Como Entero
    Escribir "Ingrese el tamaño que van a tener todos los vectores."
    Leer tamanio
    Dimension vectorA(tamanio), vectorB(tamanio), vectorC(tamanio)
    menu(vectorA, vectorB, vectorC, entry, tamanio)
FinAlgoritmo

Funcion menu(vectorA Por Referencia, vectorB Por Referencia, vectorC Por Referencia, entry Por Referencia, tamanio)
    Escribir ""
    Escribir "Menu de acciones:"
    Escribir "1 _ Llenar vectorA con valores aleatorios"
    Escribir "2 _ Llenar vectorB con valores aleatorios"
    Escribir "3 _ Llenar vectorC con la suma de A + B"
    Escribir "4 _ Llenar vectorC con la resta B - A"
    Escribir "5 _ Mostrar vector deseado"
    Escribir "6 _ Salir"
    Leer entry
    Segun entry hacer
        1:
            aleatorios(vectorA, tamanio)
            Escribir "VectorA ahora con valores aleatorios!"
            menu(vectorA, vectorB, vectorC, entry, tamanio)
        2:
            aleatorios(vectorB, tamanio)
            Escribir "VectorB ahora con valores aleatorios!"
            menu(vectorA, vectorB, vectorC, entry, tamanio)
        3:
            sumaVectores(vectorA, vectorB, vectorC, tamanio)
            Escribir "VectorC generado de la suma de A+B!"
            menu(vectorA, vectorB, vectorC, entry, tamanio)
        4:
            restaVectores(vectorA, vectorB, vectorC, tamanio)
            Escribir "VectorC generado de la resta de B-A!"
            menu(vectorA, vectorB, vectorC, entry, tamanio)
        5:
            mostrarVector(vectorA, vectorB, vectorC, tamanio)
            menu(vectorA, vectorB, vectorC, entry, tamanio)
        6:
            Escribir "Nos re vimo kpo."
        De Otro Modo:
    FinSegun
FinFuncion

funcion aleatorios(vector Por Referencia, tamanio)
    Definir i Como Entero
    para i = 0 hasta tamanio-1 Hacer
        vector[i] = Aleatorio(-100,100)
    FinPara
FinFuncion

funcion sumaVectores(vectorA Por Referencia, vectorB Por Referencia, vectorC Por Referencia, tamanio)
    Definir i Como Entero
    para i = 0 hasta tamanio-1 Hacer
        vectorC[i] = vectorA[i] + vectorB[i]
    FinPara
FinFuncion

funcion restaVectores(vectorA Por Referencia, vectorB Por Referencia, vectorC Por Referencia, tamanio)
    Definir i Como Entero
    para i = 0 hasta tamanio-1 Hacer
        vectorC[i] = vectorB[i] - vectorA[i]
    FinPara
FinFuncion

funcion mostrarVector(vectorA, vectorB, vectorC, tamanio)
    Definir entry Como Entero
    Escribir "Ingrese 1 para mostrar el vectorA"
    Escribir "Ingrese 2 para mostrar el vectorB"
    Escribir "Ingrese 3 para mostrar el vectorC"
    Leer entry
    Segun entry Hacer
        1:
            mostrarVectorEnPantalla(vectorA, tamanio)
        2:
            mostrarVectorEnPantalla(vectorB, tamanio)
        3:
            mostrarVectorEnPantalla(vectorC, tamanio)
    FinSegun
FinFuncion

Funcion mostrarVectorEnPantalla(vector, tamanio)
    Definir i Como Entero
    Para i = 0 Hasta tamanio-1 Hacer
        Si i == 0 Entonces
            Escribir Sin Saltar "[ "
        FinSi
        Si i == tamanio-1 entonces 
            Escribir Sin Saltar vector[i] " ]"
        SiNo
            Escribir Sin Saltar vector[i] ", "
        FinSi
    FinPara
    Escribir ""
FinFuncion