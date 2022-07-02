//
//  ToDoItemDetail2.swift
//  SwiftUIListTest
//
//  Created by Karen Mathes on 7/2/22.
//

//.. from SwiftUI Cookbook - Second Edition
//..    by Giordano Scalzo, Edgar Nzokwe

import SwiftUI

struct ToDoItemDetail2: View {
    
    //..receiving the array
    @Binding var todos: MyTodoItem2
    
    var body: some View {
        VStack(spacing: 10){
            Text("Edit Subtitle and Go Back to See Changes on List Screen")
                    .foregroundColor(.purple)
                    .font(.title3)
                    .padding()
            HStack{
                Text("Title: ")
                Text("\(todos.title)")
                Spacer()
            }
            .padding()
            HStack{
                Text("SubTitle: ")
                Spacer()
                TextField("Enter a subtitle:", text: $todos.kam)
                //.. yellow with opacity
                    .background(Color(red: 255/255, green: 255/255, blue: 102/255, opacity: 0.45))
            }
            .padding()
            Spacer()
        }
        
        
    }
}

//NEED TO STILL GET PREVIEW WORKING

struct ToDoItemDetail2_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemDetail2(todos: .constant(.init(title: "what", kam: "the hey")))
    }
}
