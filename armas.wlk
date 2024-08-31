object ballesta {
    var flechas = 10
    method registrarUso(){
        flechas = 0.max(flechas-1)
    } 
    method estaCargada(){
        return flechas > 0
    } 
  method potencia() = 4
}

object jabalina {
    var estaCargada = true 
  method potencia() = 30
  method registarUso() {
    estaCargada = false
  } 
  method estaCargada() = estaCargada
}