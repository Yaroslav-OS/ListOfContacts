//
//  InfoRow.swift
//  ListOfContacts
//
//  Created by Yaroslav on 24.12.2020.
//

import SwiftUI

struct InfoRow: View {
    
    let systemName: String
    let personDetails: String
        
    var body: some View {
        HStack(alignment: .bottom, spacing: 20) {
            Image(systemName: systemName)
                .foregroundColor(.blue)
            Text(personDetails)
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(systemName: "phone", personDetails: "yaroslav@icloud.com")
    }
}
