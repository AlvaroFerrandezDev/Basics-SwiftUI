//
//  BindingView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

/*
 Binding

 Tipo por valor

 Se usa en la vista que recibe el envio de la variable

 Es para usar y actualizar un valor que no se ha creado en la vista propietaria. Por ejemplo value se ha creado en la otra vista, StateView, pero queremos pasar su valor a otra vista, BindingView y que este mantenga los cambios que hagamos en esta vista
 */

import SwiftUI

struct BindingView: View {
    @Binding var value: Int
    @State private var selection: Int?
    @ObservedObject var user: UserData

    var body: some View {
        VStack {
            Button("Suma 2") {
                value += 2
            }

            Button("Actualizar datos") {
                user.name = "Pepe"
                user.age = 89
            }
            
            NavigationLink(destination: EnvironmentObjectView(), tag: 1, selection: $selection) {
                Button("Ir a EnvironmentObjectView") {
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
