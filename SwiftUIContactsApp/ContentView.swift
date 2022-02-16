//
//  ContentView.swift
//  SwiftUIContactsApp
//
//  Created by  BoDim on 16.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.getContacts()
    
    var body: some View {
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
            ContactSectionView(persons: persons)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Most Viewed")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
