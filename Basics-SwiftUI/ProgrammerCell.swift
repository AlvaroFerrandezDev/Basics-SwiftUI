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
                .frame(width: 40, height: 40)
                .padding(10)

            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languanges)
                    .font(.subheadline)
            }

            Spacer()
        }.padding()
    }
}

struct ProgrammerCell_Previews: PreviewProvider {
    static var previews: some View {
        let mockProgrammer = Programmer(id: 01, name: "Fernando Alonso", languanges: "Swift", avatar: Image(systemName: "person.fill"))
        ProgrammerCell(programmer: mockProgrammer)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
