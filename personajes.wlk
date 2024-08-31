import elementos.*
import armas.*

object floki {
  var arma = ballesta
  
  method encontrar(elemento) {
    if (arma.estaCargada()) {
      elemento.recibirAtaque(arma.potencia())
      arma.registrarUso()
    }
  }
  
  method arma(unArma) {
    arma = unArma
  }
  
  method arma() = arma
}

object mario {
  var valorRecolectado = 0 
  var ultimoElemento = aurora 
  method encontrar(elemento) {
    valorRecolectado = valorRecolectado + elemento.otorgarValor()
    elemento.recibirTrabajo()
    ultimoElemento = elemento
  }

  method esFeliz() {
    return valorRecolectado >= 50  or ultimoElemento.altura() >= 10
  } 
}