//
//  StateView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

/*
 State

 Tipo por valor

 Se usa en la vista propietaria de la variable

 Las vistas de SwiftUI son estructuras, por lo que son inmutables, pero tenemos la necesidad de modificarlos. Para actualizar algunas propiedades en tiempo de ejecución necesitamos los property wrappeds, envoltorios de propiedades que nos permiten almacenar y actualizar valor
 */

import SwiftUI

struct StateView: View {
    @State private var value: Int = 0
    @State private var selection: Int?
    
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es \(value)")
                Button("Suma 1") {
                    value += 1
                }
                NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
                Text("Me llamo \(user.name) y tengo \(user.age) años")
            }
            .navigationTitle("StateView")
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
