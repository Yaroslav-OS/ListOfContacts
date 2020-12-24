//
//  DetailedPersonsList.swift
//  ListOfContacts
//
//  Created by Yaroslav on 24.12.2020.
//

import SwiftUI

struct DetailedPersonsList: View {
    
    let personsList: [Person]
    
    var body: some View {
        List {
            ForEach(personsList, id: \.name) { person in
                Section(header: Text(person.fullName)) {
                    InfoRow(systemName: "phone",
                            personDetails: person.phoneNumber)
                    InfoRow(systemName: "tray",
                            personDetails: person.email)
                }
            }
        }
    }
}

struct DetailedPersonsList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedPersonsList(personsList: Person.getContactList())
    }
}
