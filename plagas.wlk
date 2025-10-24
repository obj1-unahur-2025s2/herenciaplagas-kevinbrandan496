
class Plaga {
    var poblacion
    method poblacion() = poblacion
    method transmiteEnfermedades() = poblacion>=10
    method atacarA(unElemento) {
        unElemento.recibirAtaque(self)
      self.efectosDeAtacar()
    }
    method efectosDeAtacar() {
            poblacion*=1.1

    }
}
class Cucarachas inherits Plaga {  ///hace llamado a la clasePadre
 
       
    var pesoPromedioBicho 

    method nivelDeDanio() { return poblacion *0.5
      
    }   

    override method transmiteEnfermedades() {
     return super() && pesoPromedioBicho>=10 ///superpone lo que hereda y le agrega la otra condicion
 
    } 
    override method efectosDeAtacar() {
      super()
      pesoPromedioBicho+=2
    }
}

class Pulgas inherits Plaga {
 
  method nivelDeDanio() = poblacion*2
}

class Garrapatas inherits Pulgas { /// no comntiene nada ya que es similar a pulgas
 override method efectosDeAtacar() { poblacion*=1.2
 }
}


class Mosquitos inherits Plaga {
 
  method nivelDeDanio() = poblacion
 override method transmiteEnfermedades() = super() && poblacion % 3 == 0

}







  
