//
//  PersonsList.swift
//  ListOfContacts
//
//  Created by Yaroslav on 24.12.2020.
//

import SwiftUI

struct PersonsList: View {
        
    let personsList: [Person]
    
    var body: some View {
        List(personsList, id: \.name) { person in
            NavigationLink("\(person.fullName)",
                           destination: FullInfoView(person: person))
        }
    }
}

struct PersonsList_Previews: PreviewProvider {
    static var previews: some View {
        PersonsList(personsList: Person.getContactList())
    }
}
