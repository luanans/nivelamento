import Foundation

print("Digite um número entre 100 e 999")
var entrada = readLine()
if let entradaOpt = entrada {
    let numero = Int(entradaOpt) // Int(entradaOpt)!
    if let numeroOpt = numero {
        if numeroOpt < 100 || numeroOpt > 999 {
            print("Número inválido")
        
        } else if numeroOpt%3 == 0 {
            print("Número divisível por 3")
        } else {
            print("Número não divisível por 3")
        }
    }
}
// let n1 = Int(readLine()!)
