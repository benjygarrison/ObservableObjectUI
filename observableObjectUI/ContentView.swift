//
//  ContentView.swift
//  observableObjectUI
//
//  Created by Ben Garrison on 6/7/22.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var observableTimer = ObservableTimer()
    //call @ObservedObject to bind with the @Published object
    
    @State var doubledValue: Int = 0
    //call @State in order to assign var to observed object
    
    var body: some View {
        VStack{
            HStack {
            Text("\(self.observableTimer.value)") //display published value
                .font(.largeTitle)
                .padding()
                Text("\(doubledValue)")
                    .font(.largeTitle)
                    .padding()
            }
 
            Button("Double it!") {
                doubledValue = self.observableTimer.value * 2
            }
                .frame(width: 200, height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .font(.largeTitle)
                .cornerRadius(15)
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
