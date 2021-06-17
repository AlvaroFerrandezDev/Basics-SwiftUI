//
//  ListView.swift
//  Basics-SwiftUI
//
//  Created by Álvaro Ferrández Gómez on 17/6/21.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    @Published var mockProgrammers = [
        Programmer(id: 0, name: "Fernando Alonso", languanges: "Swift", avatar: Image(systemName: "person.fill"), isFavorite: true),
        Programmer(id: 1, name: "Lewis Hamilton", languanges: "KKDroid", avatar: Image(systemName: "person.fill"), isFavorite: false),
        Programmer(id: 2, name: "Sebastian Vettel", languanges: "Phyton", avatar: Image(systemName: "person"), isFavorite: false),
        Programmer(id: 3, name: "Carlos Sainz", languanges: "Java", avatar: Image(systemName: "person.fill"), isFavorite: true),
        Programmer(id: 4, name: "Pedro De La Rosa", languanges: "Kotlin", avatar: Image(systemName: "person"), isFavorite: false),
    ]
}

struct ListView: View {
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorite: Bool = false

    private var filteredProgrammers: [Programmer] {
        return programmersModelData.mockProgrammers.filter { programmer in
            !showFavorite || programmer.isFavorite
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $showFavorite) {
                    Text("Mostrar favoritos")
                }.padding()

                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListViewDetail(favorite: $programmersModelData.mockProgrammers[programmer.id].isFavorite, programmer: programmer)) {
                        ProgrammerCell(programmer: programmer)
                    }
                }
            }.navigationTitle("Programmers")
        }

        Spacer()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
