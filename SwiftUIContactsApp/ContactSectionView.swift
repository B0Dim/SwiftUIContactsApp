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
                    HStack {
                        Image(systemName: "phone")
                        Text(person.phone)
                    }
                    HStack {
                        Image(systemName: "tray")
                        Text(person.email)
                    }
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
