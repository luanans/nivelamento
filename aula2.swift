//
//  main.swift
//  [SWIFT] Aulas
//
//  Created by Turma Manhã on 2/26/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//


import Foundation
///////// Trívia
//print("Bem-vindo (a)!")

//Perguntas e respostas
/*
 let pergunta1 = "Qual o significado da sigla HP?"
 let resposta1 = "Hewllet-Packard"
 
 let pergunta2 = "Qual a capital da Suíça?"
 let resposta2 = "Berna"
 
 let pergunta3 = "Quantas dentições tem um cachorro? (Responda em algarismos)"
 let resposta3 = "3"
 
 let pergunta4 = "Que filme estrelado por Leonardo DiCaprio ganhou 11 Oscars?"
 let resposta4 = "Titanic"
 
 let pergunta5 = "Qual o nome da grife cujo fundador foi assassinado em 1997?"
 let resposta5 = "Versace"
 
 let pergunta6 = "Em que ano a América foi descoberta? (Informe a letra correspondente à opção correta:  \n(a) 1492 \n(b) 1498 \n(c) 1500 \n(d) 1514"
 let resposta6 = "A"
 
 var cont = 0
 print(pergunta1)
 var palpite = readLine()
 
 if palpite == resposta1 {
 print("\nCerta resposta!\n")
 cont += 1
 } else {
 print("\nNão acredito que você errou essa!\n")
 cont -= 1
 }
 
 print(pergunta2)
 palpite = readLine()
 
 if palpite == resposta2 {
 print("\nFecha com a cara das inimigas!\n")
 cont += 1
 } else {
 print("\nQuer estudar um pouco e voltar depois? Eu espero...\n")
 cont -= 1
 }
 
 print(pergunta3)
 palpite = readLine()
 
 if palpite == resposta3 {
 print("\nVocê está com tudo hoje!\n")
 cont += 1
 } else {
 print("\nTá difícil hoje, hein?\n")
 cont -= 1
 }
 
 print(pergunta4)
 palpite = readLine()
 
 if palpite == resposta4 {
 print("\nÉ nóis que voa!\n")
 cont += 1
 } else {
 print("\nPor quanto você está comprando o quilo do feno?\n")
 cont -= 1
 }
 
 print(pergunta5)
 palpite = readLine()
 
 if palpite == resposta5 {
 print("\nParece que temos um Einstein entre nós!\n")
 cont += 1
 } else {
 print("\nHoje atropelaram um equino na estrada... Até desci do carro para ver se era você!\n")
 cont -= 1
 }
 
 print(pergunta6)
 palpite = readLine()
 
 if palpite?.lowercased() == resposta6.lowercased() {
 print("\nVocê está terrível hoje!\n")
 cont += 1
 } else {
 print("\nEu desisto de você.\n")
 }
 
 print("\nThat's all, folks!\n")
 print("\nVocê fez \(cont) pontos.\n")
 
 if cont >= 4 {
 print("\nParabéns! Você fez o dever de casa direitinho!\n")
 } else if cont < 4 && 0 < cont {
 print("\nQuero jogar contra você sempre, nem suei para ganhar!\n")
 } else {
 print("\nMais algumas perguntas e você sairia deste jogo devendo até as calças!\n")
 }
 
 //////Jogo da adivinhação
 
 print("Bem-vindo (a) ao Jogo da Adivinhação, Jogador 1! Digite um número para o Jogador 2 adivinhar: ")
 let num = readLine()
 
 
 ///Faça um programa que lê três números a partir do teclado e imprime os três em ordem crescente.
 
 ///print("Digite três números")
 
 ///Faça um programa que lê um número entre 100 e 999 a partir do teclado e verifica se ele é divisível por 3. Se achar que foi fácil, resolva o problema sem usar o comando if.
 
 print("Digite um número: ")
 
 let valor = readLine()
 if let string = valor {
 if let num = Int(string) {
 if num < 100 || num > 999 {
 print("Número inválido")
 }
 else {
 if num % 3 == 0 {
 print("Este número é divisível por 3")
 }
 else {
 print("Este número não é divisível por 3")
 }
 }
 }
 }
 
 
 ///Faça um programa que lê três números a partir do teclado e imprime os três em ordem crescente.
 
 print("Digite três números: ")
 let valor1 = readLine()
 let valor2 = readLine()
 let valor3 = readLine()
 
 
 if let string1 = valor1, let string2 = valor2, let string3 = valor3 {
 if let num1 = Int(string1), let num2 = Int(string2), let num3 = Int(string3){
 let menor = min(num1,num2,num3)
 let maior = max(num1,num2,num3)
 print("\(menor), \((num1 + num2 + num3) - menor - maior), \(maior)")
 }
 }
 
 ///Faça uma calculadora de 4 operações que recebe o operador (+, -, * ou /) primeiro, os dois operandos depois, realiza a operação desejada e imprime o resultado.
 
 print("Bem-vindo (a)! Informe com o símbolo o tipo de operação que deseja realizar: \n+ \n- \n* \n/")
 let operador = readLine()
 print("Informe o operando 1: ")
 let num1 = readLine()
 print("Informe o operando 2: ")
 let num2 = readLine()
 
 if let string1 = num1, let string2 = num2 {
 if let valor1 = Int(string1), let valor2 = Int(string2) {
 if operador == "+"{
 print(valor1 + valor2)
 }
 else if operador == "-"{
 print(valor1 - valor2)
 }
 else if operador == "*" {
 print(valor1 * valor2)
 }
 else if operador == "/"{
 if valor2 != 0 {
 print(valor1 / valor2)
 }
 else {
 print("Erro: não existe divisão por zero")
 }
 }
 else {
 print("Operador inválido.")
 }
 }
 else {
 print("Erro: não foi possível realizar a operação. Operandos inválidos")
 }
 }
 
 
 ///Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz"
 
 var num = 1
 
 while num <= 100 {
 if num % 3 == 0 {
 if num % 5 == 0 {
 print("FizzBuzz")
 }
 else {
 print("Fizz")
 }
 }
 else if num % 5 == 0 {
 print("Buzz")
 }
 else {
 print(num)
 }
 num += 1
 }
 

///Construa um programa que fica pedindo que o usuário digite números e os soma até que o usuário digite 0. Neste momento o programa deve imprimir o valor total da soma.

print("Digite números para somar. Digite 0 para sair.")
var valor = readLine()
var soma = 0

if var numero = valor, var num = Int(numero) {
    while num != 0 {
        soma += num
        valor = readLine()
        if var numero = valor, var num = Int(numero) {
            
        }
    }
}

print(soma)
 
 TERMINAR!!!


// Faça um programa que, dado um número lido a partir do teclado, calcula a soma de seus dígitos (independentemente do número de dígitos) - COM ARITMÉTICA

let valor = readLine() //"412"
var soma = 0

if let string = valor, let num = Int(string) { //412
    var quociente = num
    while quociente > 0 {
        var resto = quociente % 10
        quociente /= 10
        soma += resto
        }
}
print(soma)


//COM STRING

let numero = readLine()
var soma = 0

if let string = numero {
    for i in string.characters {
    }
    
        
}



//Construa um programa que lê um número N a partir do teclado e calcula todos os números primos entre 1 e N

let numero = readLine() //5

if let string = numero, let num = Int(string) {
    for var i in 2...num { // 1 a 5
        for var j in 1...i {
            if i != 1 %
        print(i)
                }
            }
        }
}
//TERMINAR!!!!

*/





























