// Juego de Memoria
// Autor: Ángel García
// Fecha: 18 de Junio de 2018

/*
Programa un playground que evalúe un rango de números en base a 4 reglas de impresión.

Generar un rango de 0 a 100, incluye el número 100 en el rango.
Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada número del rango y aplicar las siguientes reglas de impresión.
Al evaluar cada número debes aplicar las siguientes reglas:
  - Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
  - Si el número es par, imprime: # el número + “par!!!”
  - Si el número es impar, imprime: # el número + “impar!!!”
  - Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”

Debes de usar la interpolación de variables para realizar la impresión de cada número.
*/

import UIKit

//Se genera un rango de 0 a 100, incluyendo el número 100 en el rango.
var rango = 0...100

/*
Como hay valores que pueden cumplir varias condiciones, como por ejemplo el 30 (es divisible entre 5, es par y está dentro del
rango 30 y 40), se definen sentencias IF independientes, para que puedan entrar en varias, ejecutando varios prints, ya que no
se indica en el enunciado que se tenga que pasar solo por uno.
*/

//OPCIÓN 1 - IMPRIMIR UNA LINEA POR CADA CONDICIÓN QUE SE CUMPLA
print("OPCIÓN 1 - UNA LINEA POR CADA CONDICIÓN CUMPLIDA")
//Se itera el rango completo, utilizando la sentencia for
for valor in rango {
    if ( valor % 5 == 0 ) {              //Si es divisible entre 5, imprime: # el número  + “Bingo!!!”
        print ("#\(valor) Bingo!!!")
    }
    if ( valor % 2 == 0 ) {              //Si es par, imprime: # el número + “par!!!”
        print ("#\(valor) par!!!")
    }
    if ( valor % 2 != 0 ) {              //Si es impar, imprime: # el número + “impar!!!”
        print ("#\(valor) impar!!!")
    }
    if ( valor >= 30 && valor <= 40 ) {  //Si está dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
        print ("#\(valor) Viva Swift!!!")
    }
}


//OPCIÓN 2 - IMPRIMIR SOLO UNA LINEA POR NÚMERO
print("\n\nOPCIÓN 2 - UNA LINEA POR NÚMERO")
//Se itera el rango completo, utilizando la sentencia for
for valor in rango {
    if ( valor % 2 == 0 ) {                                     //Si es par
        if ( valor >= 30 && valor <= 40 ) {                         //Si es par y está entre 30 y 40
            if ( valor % 5 == 0 ) {                                     //Si es par, está entre 30 y 40 y es divisible por 5
                print ("#\(valor) Bingo!!! par!!! Viva Swift!!!")
            } else {                                                    //Si es par, está entre 30 y 40 y NO es divisible por 5
                print ("#\(valor) par!!! Viva Swift!!!")
            }
        } else {                                                    //Si es par y NO está entre 30 y 40
            if ( valor % 5 == 0 ) {                                     //Si es par y NO está entre 30 y 40, y es divisible por 5
                print ("#\(valor) Bingo!!! par!!!")
            } else {                                                    //Si es par y NO está entre 30 y 40, y NO es divisible por 5
                print ("#\(valor) par!!!")
            }
        }
    } else {
        if ( valor >= 30 && valor <= 40 ) {                         //Si es impar y está entre 30 y 40
            if ( valor % 5 == 0 ) {                                     //Si es impar, está entre 30 y 40 y es divisible por 5
                print ("#\(valor) Bingo!!! impar!!! Viva Swift!!!")
            } else {                                                    //Si es impar, está entre 30 y 40 y NO es divisible por 5
                print ("#\(valor) impar!!! Viva Swift!!!")
            }
        } else {                                                    //Si es impar y NO está entre 30 y 40
            if ( valor % 5 == 0 ) {                                     //Si es impar y NO está entre 30 y 40, y es divisible por 5
                print ("#\(valor) Bingo!!! impar!!!")
            } else {                                                    //Si es impar y NO está entre 30 y 40, y NO es divisible por 5
                print ("#\(valor) impar!!!")
            }
        }
    }
}



