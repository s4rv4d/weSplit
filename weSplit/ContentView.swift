//
//  ContentView.swift
//  weSplit
//
//  Created by Sarvad shetty on 11/14/19.
//  Copyright © 2019 Sarvad shetty. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var tapCount = 0
//    @State private var name = ""
//    let studentName = ["Harry","server","connected"]
//    @State private var studName = "Harry"
    
    //check spliting part
//    @State is a property wrapper, updating @state vals will update ui
    @State private var checkAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    //getting total per person value
    var totalPerPerson: Double {
        //calculate total per person value
        let peopleCount = Double(self.numberOfPeople) ?? 0
        let tipSelection = Double(self.tipPercentages[tipPercentage])
        let orderAmount = Double(self.checkAmount) ?? 0
        
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        print(grandTotal/peopleCount)
        return amountPerPerson
    }
    
    var body: some View {
        
        NavigationView {
            Form {
               Section {
                   TextField("Check amount:", text: $checkAmount)
                       .keyboardType(.decimalPad)
                    TextField("Number of people:", text: $numberOfPeople)
                        .keyboardType(.decimalPad)
                }
                
                //tip percentages
                Section(header: Text("How much tip do you want to leave?")) {
                    
                    Picker("Tip percentage:", selection: $tipPercentage){
                        ForEach(0 ..< self.tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Amount Per Person")) {
                   Text("$\(totalPerPerson, specifier: "%.2f")")
                    
               }
                
                Section(header: Text("Total anount with tip")) {
                    Text("$\(self.totalPerPerson * (Double(self.numberOfPeople) ?? 0)!, specifier: "%.2f")")
                }
            }
            
            //navigation title
            .navigationBarTitle("WeSplit")
        }
        
        
        
//        Picker("Selected Student", selection: $studName) {
//            ForEach(0..<studentName.count){
//                Text("\(self.studentName[$0])")
//            }
//        }
        
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
