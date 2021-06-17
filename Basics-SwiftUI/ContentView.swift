//
//  ContentView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
                .background(Color.black)

            Spacer()

            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.orange)
                    .padding(20)
                
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                    .padding(40)
                
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                    .padding(60)
                
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(80)
                
                Text("Centro")
                    .padding()
                    .background(Color.yellow)
            }
            
            Spacer()
            
            HStack {
                Text("SwiftUI")
                    .padding()
                    .background(Color.yellow)
                
                Spacer()
                
                Text("Prueba")
                    .padding()
                    .background(Color.yellow)
            }
            .padding()
            .background(Color.gray)
        }
        .padding()
        .background(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
