//
//  NumbersListView.swift
//  ContactList
//
//  Created by Ярослав Любиченко on 4.5.2023.
//

import SwiftUI

struct NumbersListView: View {
    let persons: [Person] = Person.getContactList()
    
    var body: some View {
        List(persons) {person in
            Section(header: Text(person.fullName)) {
                VStack(alignment: .leading) {
                    HStack(spacing: 20) {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(person.phoneNumber)
                    }
                    Divider()
                    
                    HStack(spacing: 20) {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text(person.email)
                    }
                }
            }
        }
    }
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView()
    }
}
