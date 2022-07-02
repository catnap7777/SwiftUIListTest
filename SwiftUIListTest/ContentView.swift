//
//  ContentView.swift
//  SwiftUIListTest
//
//  Created by Karen Mathes on 7/2/22.
//


import SwiftUI

//.. kam from Oreilly WW PRO book - Pro iPhone Development with SwiftUI: Design and Manage Top Quality Apps 3rd ed. Edition by Wallace Wang


struct ContentView: View {
    @StateObject var cat = AnimalModel()
        var body: some View {
            VStack {
                Text("Hello, \(cat.name)")
                Text("Breed: \(cat.breed)")
                Text("Age: \(Int(cat.age))")
                Text("Weight: \(cat.weight)")
                DisplayTextField()
            }.environmentObject(cat)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cat: AnimalModel())
    }
}
