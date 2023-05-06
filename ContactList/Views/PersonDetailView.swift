//
//  PersonDetailView.swift
//  ContactList
//
//  Created by Ярослав Любиченко on 4.5.2023.
//

import SwiftUI

struct PersonDetailView: View {
    let person: Person
    
    var body: some View {
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                Divider()

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
                .padding()
                Spacer()
            }
            .navigationTitle(person.fullName)
            .padding()
    }
}

struct PersonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailView(person: Person(
            name: "Adam",
            surname: "Adam",
            email: "mail.com",
            phoneNumber: "+7 777 777-77-77"
        )
        )
    }
}
