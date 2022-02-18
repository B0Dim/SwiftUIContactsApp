//
//  ContactSectionView.swift
//  SwiftUIContactsApp
//
//  Created by  BoDim on 16.02.2022.
//

import SwiftUI

struct ContactSectionView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header: Text(person.fullName).font(.subheadline)) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
                .textCase(.none)
            }
            .navigationBarTitle("Most Viewed")
        }
    }
}

struct ContactSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactSectionView(persons: Person.getContacts())
    }
}
