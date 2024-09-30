//
//  ContentView.swift
//  WeSplit
//
//  Created by Sofia Diniz Melo Santos on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount: Double = 0.0
    @State private var numberOfPeople: Int = 0
    @State private var tipPercentage: Int = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Check Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<99){
                            Text("\($0) people")
                        }
                    }.pickerStyle(.navigationLink)
                }
                
                Section{
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }.navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
