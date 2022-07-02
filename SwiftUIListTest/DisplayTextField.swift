//
//  DisplayTextField.swift
//  SwiftUIListTest
//
//  Created by Karen Mathes on 7/2/22.
//
//.. kam from Oreilly WW PRO book - Pro iPhone Development with SwiftUI: Design and Manage Top Quality Apps 3rd ed. Edition by Wallace Wang

import SwiftUI

struct DisplayTextField: View {
    @EnvironmentObject var creature: AnimalModel
    var body: some View {
        VStack {
            HStack {
                Text("Name:")
                TextField("Type a name here", text: $creature.name)
            }
            HStack {
                Text("Breed:")
                TextField("Type a breed here", text: $creature.breed)
            }
            HStack {
                Text("Age:")
                Slider(value: $creature.age, in: 0...20)
            }
            HStack {
                Text("Weight:")
                Slider(value: $creature.weight, in: 0...200)
            }
        }.environmentObject(AnimalModel())
    }
}

struct DisplayTextField_Previews: PreviewProvider {
    static var previews: some View {
        DisplayTextField()
    }
}
