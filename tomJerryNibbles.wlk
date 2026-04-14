object tom {
    var energia = 137

    method velocidad_maxima() = 5 + (energia / 10) 

    method correr(metros) {
      energia = energia -  (metros / 2)
      return energia
    }

    method comer(raton) {
      energia += 12 + raton.peso()
    } 

    method puede_cazar(distancia) = self.correr(distancia) <= energia  

    method cazar_raton(distancia,raton) {
      if(self.puede_cazar(distancia)){
        self.comer(raton)
      }
    }
}

object jerry {
  var edad = 2 
    method peso() = edad * 20

  method cumplir(años) {
    edad += años 
  }
}

object nibbles {
  method peso() = 35 
}

// Inventar otro ratón