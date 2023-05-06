//
//  ContentView.swift
//  ContactList
//
//  Created by Ярослав Любиченко on 4.5.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsListView()
                .tabItem {
                    Label("Contacts", systemImage: "person.2.fill")
                }
            NumbersListView()
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
