object castillo {
  var nivelDeDefensa = 150
  
  method recibirAtaque(ataque) {
    nivelDeDefensa = 0.max(nivelDeDefensa - ataque)
  }
  
  method nivelDeDefensa() = nivelDeDefensa
  
  method altura() = 20
  
  method recibirTrabajo() {
    nivelDeDefensa = 200.min(nivelDeDefensa + 20)
  }
  
  method otorgarValor() = nivelDeDefensa * 0.2
}

object aurora {
  var estaViva = true
  
  method recibirAtaque(ataque) {
    if (ataque >= 10) {
      estaViva = false
    }
  }
  
  // sino se puede hacer estaViva = (ataque >= 10) {false} else {estaViva}
  method estaViva() = estaViva
  
  method altura() = 1
  
  method recibirTrabajo() {
    
  }
  
  method otorgarValor() = 15
}

object tipa {
  var altura = 8
  
  method recibirAtaque(ataque) {
    
  }
  
  method altura() = altura
  
  method recibirTrabajo() {
    altura += 1
  }
  
  method otorgarValor() = altura * 2
}