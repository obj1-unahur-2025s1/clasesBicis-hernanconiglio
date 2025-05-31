import bicis.*


class Deposito {
    const bicis = []

    method agregarBicis(listaDeBicis) {
        if(listaDeBicis.any({nuevaBici=>bicis.contains(nuevaBici)})) {
            //self.error("no se puede agregar dos veces una bici al deposito")
            throw new Exception(message="no se puede agregar dos veces una bici al deposito")
        }
        if(listaDeBicis.any({bici => listaDeBicis.occurrencesOf(bici) > 1})) {
            self.error("hay bicis duplicadas dentro de la lista de las nuebas bicis")
        }
        bicis.addAll(listaDeBicis)
    }
}