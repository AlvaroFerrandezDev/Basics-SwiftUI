//
//  EnvironmentObjectView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

/*
 Environment Object
 
 Se usa en los casos en los que un observed object tendria que enviarse a mas de una vista
 
 Es como un observed object pero a lo bestia, asi no lo tenemos que hacer de uno en uno, lo hacemos accesible de manera general
 
 PELIGRO: Hacer uso de el sin haberlo inicializado
 
 Esto se arregla en  la preview
 */

import SwiftUI

struct EnvironmentObjectView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text("Me llamo \(user.name)")
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
