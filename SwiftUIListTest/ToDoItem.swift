//
//  ToDoItem.swift
//  SwiftUIListTest
//
//  Created by Karen Mathes on 7/2/22.
//
//.. from SwiftUI Cookbook - Second Edition
//..    by Giordano Scalzo, Edgar Nzokwe

// WITHOUT MODEL CLASS - uses individual fields and WITHOUT NAVIGATION VIEW...
//.. Instead of navigating to new page to update list, you can just click on the row and edit whatever field

import SwiftUI

struct MyTodoItem: Identifiable {
    let id = UUID()
    var title: String
    var kam: String
    init(_ someTitle:String, _ someKam: String){
        title = someTitle
        kam = someKam
    }
}

struct ToDoItem: View {
    @State var todos = [
        MyTodoItem("Eat", "kamEat"),
        MyTodoItem("Sleep", "kamSleep"),
        MyTodoItem("Code", "kamCode")
        ]
    var body: some View {
        VStack {
            List($todos) { $todo in
                HStack {
                    TextField("Number", text: $todo.title)
                    Text("\(todo.kam)")
                }
            }
            .frame(width: 325, height: 200)
            Button {
                printList()
            } label: {
                Text("print list")
            }
            Spacer()
        }

    }
    
    func printList() {
        for item in todos {
            print("item = \(item.title) -- \(item.kam)")
        }
    }
}

struct ToDoItem_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItem()
    }
}
