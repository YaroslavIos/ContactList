//
//  ContactsListView.swift
//  ContactList
//
//  Created by Ярослав Любиченко on 4.5.2023.
//

import SwiftUI

struct ContactsListView: View {
    let persons: [Person] = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List(persons) {person in PersonCell(person: person)
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView()
    }
}

struct PersonCell: View {
    var person: Person
    
    var body: some View {
        NavigationLink(destination: PersonDetailView(person: person)) {
            VStack(alignment: .leading) {
                Text(person.fullName)
            }
        }
    }
}
