//
//  ListViewDetail.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

import SwiftUI

struct ListViewDetail: View {
    @Binding var favorite: Bool
    
    var programmer: Programmer
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 160, height: 160)
                .clipShape(Circle())
                .padding()
                .background(Color.yellow)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 10))
                .shadow(color: /*@START_MENU_TOKEN@*/ .black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .padding()
            
            HStack {
                Text(programmer.name)
                    .font(.title)
                
                Button {
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                    }
                }
            }
            
            Text(programmer.languanges)
                .font(.subheadline)
        
            Spacer()
        }
        .padding()
    }
}

struct ListViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        let mockProgrammer = Programmer(id: 01, name: "Fernando Alonso", languanges: "Swift", avatar: Image(systemName: "person.fill"), isFavorite: false)
        ListViewDetail(favorite: .constant(false), programmer: mockProgrammer)
    }
}
