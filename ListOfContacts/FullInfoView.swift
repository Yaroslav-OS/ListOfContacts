//
//  FullInfoView.swift
//  ListOfContacts
//
//  Created by Yaroslav on 24.12.2020.
//

import SwiftUI

struct FullInfoView: View {
    
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Phone: \(person.phoneNumber)")
            Text("Email: \(person.email)")
            Spacer()
        }
        .padding(.top)
        .offset(x: -80)
        .font(.title3)
        .navigationBarTitle(Text("\(person.fullName)"),
                                displayMode: .inline)
    }
}

struct FullInfoView_Previews: PreviewProvider {
    static var previews: some View {
        FullInfoView(person: Person.getContactList()[0])
    }
}
