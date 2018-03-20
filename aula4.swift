import Foundation

print("Digite o primeiro nuúmero")
let numero = readLine()!
print("Digite o segundo número")
let numero2 = readLine()!
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
var acertouNumero = 0
print("Digite o primeito palpite")
let palpite = readLine()!
if palpite == numero || palpite == numero2{
    acertouNumero = acertouNumero + 1 
    if palpite == numero{
        print("Você acertou o primeiro número")
    } else {
        print("Você acertou o segundo número")
    }
} else {
    if palpite < numero && palpite < numero2{
            print("Palpite menor que o menor dos números")
    } else if palpite > numero && palpite > numero2 {
            print("Palpite maior que o maior dos números")
        } else {
            print("Palpite entre os números")
        }
    }
    

print("Digite o segundo número")
var palpite2 = readLine()!
if palpite == palpite2{
    print("Vocë já tentou esse palpite")
} else {
    if palpite2 == numero || palpite2 == numero2{
        acertouNumero = acertouNumero + 1
        if palpite2 == numero {
            print("Você acertou o primeiro número")
        } else {
            print("Você acertou o segundo número")
        }
    } else {
        if palpite2 < numero && palpite2 < numero2{
            print("Palpite menor que o menos dos números")
        } else if palpite2 > numero2 && palpite2 > numero{
            print("Palpite maior que o maior dos números")
        } else {
            print("Palpite entre os números")
        }
    }
}
if acertouNumero == 2 {
    print("Show!")
} else {
    print("Digite o terceiro palpite")
    let palpite3 = readLine()!
    if palpite3 == palpite || palpite3 == palpite2 {
        print("Vocë já tentou esse palpite")
    } else {
        if palpite3 == numero || palpite == numero2{
            if palpite3 == numero {
                print("Vocë acertou o primeiro numero")
                acertouNumero = acertouNumero + 1
            } else {
                print("Você acertou o segundo número")
                acertouNumero = acertouNumero + 1
            }
        }
        if acertouNumero == 2 {
            print("Certo")
        } else {
            print("errado")
        }
    
    }
}

