//
//  main.swift
//  par
//
//  Created by Turma Tarde on 2/22/18.
//  Copyright © 2018 Turma Tarde. All rights reserved.
//

import Foundation

print("Digite o  número:")

let numero = readLine()!
let numero1 = Int(numero)
var acertou = 0
print("\n\n\n\n\n\n\n\n\n\n\n\n\n")

print ("Primeiro palpite:")
var palpite = readLine()
if let palpiteOpt = palpite {
if palpiteOpt == numero {
    print("O número é igual")
    acertou = 1
} else if palpiteOpt < numero {
    print("Seu palpite é menor")
} else {
    print("Se palpite é maior")
}
}
if acertou == 0 {
    print("Segundo palpite:")
    palpite = readLine()
    if let palpiteOpt2 = palpite {
    
    if palpiteOpt2 == numero {
        print("O número é igual")
        acertou = 1
    } else if palpiteOpt2 < numero {
        print("Se palpite é menor")
    } else {
        print("Seu palpite é maior")
    }
}
}

if acertou == 0 {
    print("Terceiro palpite")
    palpite = readLine()
    if let palpiteOpt3 = palpite {

    if palpiteOpt3 == numero {
        print("O número é igual")
    } else if palpiteOpt3 < numero{
        print("Seu palpite é menor")
    } else {
        print("Seu palpite foi maior")
    }
}
}
