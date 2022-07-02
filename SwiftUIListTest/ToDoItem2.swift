//
//  ToDoItem2.swift
//  SwiftUIListTest
//
//  Created by Karen Mathes on 7/2/22.
//
//.. from SwiftUI Cookbook - Second Edition
//..    by Giordano Scalzo, Edgar Nzokwe

//.. WITH MODEL CLASS (ToDoClass2) AND NAVIGATIONVIEW

import SwiftUI

struct MyTodoItem2: Identifiable {
    let id = UUID()
    var title: String
    var kam: String
//    init(_ someTitle:String, _ someKam: String){
//        title = someTitle
//        kam = someKam
//    }
}

class ToDoClass2: ObservableObject {
    @Published var myArrayItems: [MyTodoItem2] = []
    
    func add(xtitle: String, xkam: String) {
        let myItem = MyTodoItem2(title: xtitle, kam: xkam)
        myArrayItems.append(myItem)
    }
//    func add(id: Int, name: String, quantity: Int = 1, comments: String) {
//        let myItem = GroceryItem(id: id, name: name, quantity: quantity, comments: comments)
//        item.append(myItem)
//    }
    
    init() {
        add(xtitle: "Eat", xkam: "kamEat***")
        add(xtitle: "Sleep", xkam: "kamSleep***")
        add(xtitle: "Code", xkam: "kamCode***")
    }

//    /// Three items added for testing. Remove for functional use.
//    init(){
//        add(id: 1, name: "apples", quantity: 5, comments: "fugi")
//        add(id: 2, name: "oranges", quantity: 3, comments: "Sunkist")
//        add(id: 3, name: "bananas", quantity: 7, comments: "please pick green ones")
//    }
   
}

struct ToDoItem2: View {
    
    @EnvironmentObject var toDoClass2: ToDoClass2
    
    //passing the array
    @State var todos = ToDoClass2().myArrayItems
    
//    @State var todos = [
//        MyTodoItem2("Eat", "kamEat"),
//        MyTodoItem2("Sleep", "kamSleep"),
//        MyTodoItem2("Code", "kamCode")
//        ]
    var body: some View {
        NavigationView {
            VStack {
                List($todos) { $todo in
//                    HStack {
//                        TextField("Number", text: $todo.title)
//                        Text("\(todo.kam)")
//                    }
                    NavigationLink(destination: ToDoItemDetail2(todos: $todo)) {
                        HStack {
                            TextField("Number", text: $todo.title)
                            Text("\(todo.kam)")
                        }
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

    }
    
    func printList() {
        for item in todos {
            print("item = \(item.title) -- \(item.kam)")
        }
    }
}

struct ToDoItem2_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItem2()
    }
}
