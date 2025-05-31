class Bici {
    const rodado
    const largo
    const marca
    const accesorios = #{}

    method altura() = rodado * 2.5 + 15
    method velocidadCrucero() = if(largo > 120) rodado + 6 else rodado + 2
    method carga() = accesorios.sum({a=>a.carga()})
    method agregarAccesorio(unAccesorio) {accesorios.add(unAccesorio)}
    method quitarAccesorio(unAccesorio) {accesorios.remove(unAccesorio)}
    method peso() = rodado / 2 + self.pesoAccesorios()
    method pesoAccesorios() = accesorios.sum({a=>a.peso()})
    method tieneLuz() = accesorios.any({a=>a.esLuminoso()})
    method cantidadAccesoriosLivianos() = accesorios.count({a=>a.peso() < 1})
}

// carga, peso, esLuminoso para los accesorios

class Farolito {
    method carga() = 0
    method peso() = 0.5
    method esLuminoso() = true
}

class Canasto {
    const volumen = 1.max(10)
    method peso() = volumen / 10
    method carga() = volumen * 2
    method esLuminoso() = false
    method initialize() {
        if(not volumen.between(1, 20)) {
            self.error(volumen.toString() + " no es un valor entre 1 y 20")
        }
    }
}

class Morral {
    const largo
    var tieneOjoDeGato
    method ponerOjoDeGato() {tieneOjoDeGato = true}
    method quitarOjoDeGato() {tieneOjoDeGato = false}

    method esLuminoso() = tieneOjoDeGato
    method peso() = 1.2
    method carga() = largo / 3
}