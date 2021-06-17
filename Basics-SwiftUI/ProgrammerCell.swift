//
//  ProgrammerCell.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

import SwiftUI

struct ProgrammerCell: View {
    var programmer: Programmer

    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 30, height: 30)

            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languanges)
                    .font(.subheadline)
            }

            Spacer()

            if programmer.isFavorite {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.yellow)
            }

        }
    }
}

struct ProgrammerCell_Previews: PreviewProvider {
    static var previews: some View {
        let mockProgrammer = Programmer(id: 01, name: "Fernando Alonso", languanges: "Swift", avatar: Image(systemName: "person.fill"), isFavorite: true)
        ProgrammerCell(programmer: mockProgrammer)
            .previewLayout(.fixed(width: 400, height: 50))
    }
}
