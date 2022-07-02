//
//  AnimalModel.swift
//  SwiftUIListTest
//
//  Created by Karen Mathes on 7/2/22.
//
//.. kam from Oreilly WW PRO book - Pro iPhone Development with SwiftUI: Design and Manage Top Quality Apps 3rd ed. Edition by Wallace Wang

import Foundation
import SwiftUI

class AnimalModel: ObservableObject {
    @Published var name: String = ""
    @Published var breed: String = ""
    @Published var age: Double = 0.0
    @Published var weight: Double = 0.0
}
