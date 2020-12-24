//
//  ContentView.swift
//  ListOfContacts
//
//  Created by Yaroslav on 24.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    let personsList = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                PersonsList(personsList: personsList)
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Contacts")
                    }
                DetailedPersonsList(personsList: personsList)
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Contacts")
                    }
            }
            .navigationTitle("Persons List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
