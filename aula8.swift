//
//  main.swift
//  OrdenarNumeros
//
//  Created by Turma Tarde on 2/23/18.
//  Copyright © 2018 EverlaynneMelo. All rights reserved.
//

import Foundation

print("Digite o numero:")


var talvezNumeroSecreto = readLine()!
var numeroSecreto = 0
var ehNumero = false


while ehNumero == false  {
  if let n = Int(talvezNumeroSecreto) {
      ehNumero =  true
    numeroSecreto = n
      break
    
  }
  
  print("seu numero está errado! Digite novamente:")
  talvezNumeroSecreto = readLine()!
}

