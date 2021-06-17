//
//  ObservedObjectView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

/*
 ObsrrvedObject

 Tipo por referencia

 Se usa en la vista que recibe el envio de la variable

 Es el analogo al BindingView pero para Objetos. Tal y como hemos visto, tenemos que observar un objeto por referencia
 */

import SwiftUI

struct ObservedObjectView: View {
    var body: some View {
        Text("El ejemplo está en State View, ver     @StateObject")
    }
}

struct ObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectView()
    }
}
