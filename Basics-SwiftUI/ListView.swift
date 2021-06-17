//
//  ListView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

import SwiftUI

struct ListView: View {
    let mockProgrammers = [Programmer(id: 01, name: "Fernando Alonso", languanges: "Swift", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 02, name: "Lewis Hamilton", languanges: "KKDroid", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 03, name: "Sebastian Vettel", languanges: "Phyton", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 04, name: "Carlos Sainz", languanges: "Java", avatar: Image(systemName: "person.fill")),
                           Programmer(id: 05, name: "Pedro De La Rosa", languanges: "Kotlin", avatar: Image(systemName: "person.fill"))]

    var body: some View {
        List(mockProgrammers, id: \.id) { programmer in
            ProgrammerCell(programmer: programmer)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
