//
//  ContactListView.swift
//  SwiftUIContactsApp
//
//  Created by  BoDim on 16.02.2022.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(
                    person.fullName,
                    destination: AboutPersonView(person: person))
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContacts())
    }
}
