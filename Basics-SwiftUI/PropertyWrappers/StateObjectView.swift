//
//  StateObjectView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

/*
 StateObject

 Tipo por referencia

 Se usa en la vista propietaria de la variable compleja

 Se parece a State, pero hace referencia a propiedades que son más complejas

 Son objetos complejo, por lo que se está actualizando y propagando es una referencia, no un valor

 Para esto se conforma el objeto a observableObject y se Publican los datos mediante el modificador Published
 */

class UserData: ObservableObject {
    @Published var name = "Alvaro"
    @Published var age = 26
}

import SwiftUI

struct StateObjectView: View {
    @StateObject private var user = UserData()

    var body: some View {
        NavigationView {
            VStack {
                Text("Mi nombre es \(user.name) y tengo \(user.age) años")

                Button("Actualizar datos") {
                    user.name = "Carmen"
                    user.age = 23
                }
            }
            .navigationTitle("StateObjectView")
        }
    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
