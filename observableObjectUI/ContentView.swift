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

    var body: some View {
        Text("\(self.observableTimer.value)") //display published value
            .font(.largeTitle)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
