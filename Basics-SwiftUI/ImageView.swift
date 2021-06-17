//
//  ImageView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        HStack {
            Image("alonso")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .padding()
                .background(Color.yellow)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 10))
                .shadow(color: /*@START_MENU_TOKEN@*/ .black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)

            Text("Fernando Alonso")
                .padding()
        }.padding()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
