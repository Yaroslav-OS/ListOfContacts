//
//  DataManager.swift
//  ListOfContacts
//
//  Created by Yaroslav on 24.12.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

class DataManager {
    
    static let shared = DataManager()

    let names = ["William", "James", "Charlie", "Oliver", "Oscar", "Thomas"]
    
    let surnames = ["Adams", "Baker", "Davidson", "Elliot", "Grant", "Hill"]
    
    let emails = ["aa@gmail.com", "bb@gmail.com", "cc@gmail.com",
                 "dd@gmail.com", "ee@gmail.com", "ff@gmail.com"]
    
    let phoneNumbers = ["00000001", "00000002", "00000003",
                        "00000004", "00000005", "00000006"]
}
