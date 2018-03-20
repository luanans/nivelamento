 import Foundation
 func DistanciaPontos (ponto1 : Ponto, ponto2: Ponto) -> Float{
    let dy = ponto1.x - ponto2.x
    let dx = ponto1.y - ponto2.y
    return sqrt(dy*dy + dx*dx)
 }
 protocol Forma {
    func area() -> Float
    func  incluiPonto(_ ponto: Ponto) -> Bool
    mutating func move(x: Float, y:Float)
    func incluiForma (_ outra: Forma) -> Bool
 }
 struct circulo:Forma  {
    var centro:Ponto
    var raio:Float
    func incluiForma(_ outra: Forma) -> Bool {
        if outra is Ponto {
            let pto = outra as! Ponto
            return incluiPonto(pto)
        }
        if outra is circulo {
            let circ = outra as! circulo
            if DistanciaPontos(ponto1: circ.centro, ponto2: centro)+circ.raio < raio {
               return true
            }
        }
        if outra is Retangulo {
            let ret = outra as! Retangulo
            let diagonal = sqrt(ret.ladoMaior*ret.ladoMaior + ret.ladoMenor*ret.ladoMenor)
            if diagonal < raio {
                return true
            }
            return false
        }
    
    func area() -> Float {
        return 3.14*raio*raio
    }
    mutating func move(x: Float, y: Float) {
        centro.x = centro.x + x
        centro.y = centro.y + y
    }
    func incluiPonto(_ ponto:Ponto) -> Bool {
        let distancia = DistanciaPontos(ponto1: ponto, ponto2: centro)
        if distancia < raio {
            return true
        }
        return false
    }
 }
 struct Ponto {
    var x:Float
    var y:Float
    mutating func move(x: Float, y: Float) {
        self.x = self.x + x
        self.y = self.y + y
    }
    func incluiPonto(x:Float, y:Float) -> Bool {
        if self.x == x && self.y == y {
            return true
        }
        return false
    }
 }

 struct Retangulo:Forma {
    var ladoMaior:Float
    var ladoMenor:Float
    var centro:Ponto
    func incluiForma(_ outra: Forma) -> Bool {
        if outra is Ponto {
            let pto = outra as! Ponto
            if DistanciaPontos(ponto1: centro, ponto2: pto) < ladoMenor  {
                return true
            }
            return false
        }
        if outra is circulo {
            
        }
    }
    mutating func move(x:Float, y:Float){
        centro.x = centro.x + x
        centro.y = centro.y + y
    }
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
    func incluiPonto(_ ponto: Ponto) -> Bool {
        let dx = ponto.x - centro.x
        let dy = ponto.y - centro.y
        if (dx*dx <= ladoMaior*ladoMaior || dx*dx <= ladoMenor*ladoMenor) && (dy*dy <= ladoMaior*ladoMaior || dy*dy <= ladoMenor*ladoMenor) {
            return true
        }
        return false
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
//let pto = outra as! Ponto
//if let pto = outra as? Ponto
