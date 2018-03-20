 import Foundation
 struct circulo  {
    var centro:Ponto
    var raio:Float
    func area () -> Float {
        <#function body#>
    }
    
 }
 struct Ponto {
    var x:Float
    var y:Float
 }
 
 var ladoMenor:String=""
 
 struct Retangulo {
    var ladoMaior:Float
    var ladoMenor:Float
    var centro:Ponto
    func area() -> Float {
        return self.ladoMaior*self.ladoMenor
    }
    func igual(retangulo2: Retangulo) -> Bool {
        if self.ladoMaior == retangulo2.ladoMaior && self.ladoMenor ==  retangulo2.ladoMenor {
            return true
        }
        return false
    }
    func distancia(Ponto:Ponto) -> Float {
        let distanciax =  centro.x - Ponto.x
        let distanciay = centro.y - Ponto.x
        return sqrt(distanciax*distanciax+distanciay*distanciay)
    }
 }
 
 let r2 = Retangulo(ladoMaior: 2, ladoMenor: 3, centro: Ponto(x:0,y:0))
 let r = Retangulo(ladoMaior: 2, ladoMenor: 3, centro: Ponto(x: 0, y: 0))
 let area:Float = r.area()
 
 print(area)
 if r.igual(retangulo2: r2) == true {
    print("Show")
 }
 
 /*Defina um struct Pokemon que guarda algumas informações relevantes de um pokemon:
  - nome
  - tipo (um ou dois)
  - pontos de HP totais
  - pontos de HP atuais
  - uma lista de ataques, que incluem um nome e um dano básico
  Um pokemon deve ser capaz de verificar se outro pokemon tem um tipo em comum com ele e deve ser capaz de atacar outro pokemon com um determinado ataque, infligindo dano no pokemon atacado.*/
 /*struct Ataques {
  let nomeAtaque:String
  let dano:Int
  }
  struct Pokemon {
  var nome:String
  var tipo:Int
  let totalHP:Int
  var atualHP:Int
  var ataques:[Ataques]
  func igual(Pokemon: Pokemon) -> Bool {
  if tipo == Pokemon.tipo {
  return true
  }
  return false
  }
  mutating func atado( Ataque: Ataques) {
  self.atualHP = self.atualHP - Ataque.dano
  }
  }
  var charmander = Pokemon("Charmander", 1, 300, 300, Ataques[(nomeAtaque: "Bola de F" ),()])
  */
