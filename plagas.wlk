
class Plaga {
    var poblacion
    method transmiteEnfermedades() = poblacion>=10
}
class Cucarachas inherits Plaga {  ///hace llamado a la clasePadre
 
       
    const pesoPromedioBicho 

    method nivelDeDanio() { return poblacion *0.5
      
    }   

    override method transmiteEnfermedades() {
     return super() && pesoPromedioBicho>=10 ///superpone lo que hereda y le agrega la otra condicion
 
    } 
}

class Pulgas inherits Plaga {
 
  method nivelDeDanio() = poblacion*2
}

class Garrapatas inherits Pulgas { /// no comntiene nada ya que es similar a pulgas

}


class Mosquitos inherits Plaga {
 
  method nivelDeDanio() = poblacion
 override method transmiteEnfermedades() = super() && poblacion % 3 == 0

}







  
