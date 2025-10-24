
import plagas.*


class Hogar {
 var mugre
 const confort

 method mugre() = mugre 

 method esBueno() = mugre<= confort*0.5 

 method recibirAtaque(unaPlaga) { mugre=mugre + unaPlaga.nivelDeDanio() } 


}

class Huerta {
var  produccion

method produccion() = produccion
method esbueno() = produccion > nivelMinimoDeProduccion.valor()
method recibirAtaque(unaPlaga) { 
produccion =(produccion- unaPlaga.nivelDeDanio()* 0.1 - if(unaPlaga.transmiteEnfermedades()) 10 else 0 ).max(0)
  
}

}

object nivelMinimoDeProduccion {
  var property valor=10
}

class Mascota {
    var salud

    method salud() = salud 

    method esBueno() = salud >250 

    method recibirAtaque(unaPlaga) {
        if(unaPlaga.transmiteEnfermedades()) {
            salud=(salud-unaPlaga.nivelDeDanio()).max(0)
        }
    }
  
}

class Barrio {
  const property  elementos= []

  method agregar(unElemento) {elementos.add(unElemento)}

method quitar(unElemento) {
  elementos.remove(unElemento)
} 

method cantidadElementosBuenos() = elementos.count({e=>e.esBuena()})
method cantidadElementosNoBuenos() = elementos.size() - self.cantidadElementosBuenos() 
method esCopado() = self.cantidadElementosBuenos() >self.cantidadElementosNoBuenos()

}



