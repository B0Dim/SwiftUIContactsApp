//
//  AboutPersonView.swift
//  SwiftUIContactsApp
//
//  Created by  BoDim on 16.02.2022.
//

import SwiftUI

struct AboutPersonView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding()
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                Text(person.phone)
            }
            HStack {
                Image(systemName: "tray")
                Text(person.email)
            }
            
        }
        .navigationTitle(person.fullName)
    }
}

struct AboutPersonView_Previews: PreviewProvider {
    static var previews: some View {
        AboutPersonView(person: Person.getContacts()[0])
    }
}
