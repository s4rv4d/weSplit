//
//  ContentView.swift
//  weSplit
//
//  Created by Sarvad shetty on 11/14/19.
//  Copyright © 2019 Sarvad shetty. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let studentName = ["Harry","server","connected"]
    @State private var studName = "Harry"
    
    var body: some View {
        
        Picker("Selected Student", selection: $studName) {
            ForEach(0..<studentName.count){
                Text("\(self.studentName[$0])")
            }
        }
        
//        Form {
//            ForEach(0 ..< 100){ number in
//                Text("Row \(number)")
//            }
//        }
        
////        Form {
//////            This is what’s called a two-way binding: we bind the text field so that it shows the value of our property, but we also bind it so that any changes to the text field also update the property.
////            TextField("Enter name:", text: $name)
////            Text("Your name is \(name)")
////        }
        
        ////some basically means it should return the same kind of view
        ////can only add upto 10 elements in a block in swiftUI
////        Button("Tap count \(tapCount)") {
////            self.tapCount += 1
////        }
////        NavigationView {
////            Form {
////                Section {
////                    Text("Hello, World!")
////                }
////            }
////
////            //setting a modifier(basically a property)
////            .navigationBarTitle(Text("SwiftUI")) or
////                .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
////                .navigationBarTitle("SwiftUI", displayMode: .inline)
////        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
