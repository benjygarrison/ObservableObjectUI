//
//  Timer.swift
//  observableObjectUI
//
//  Created by Ben Garrison on 6/7/22.
//

import Foundation
import SwiftUI
import Combine //Apple's reactive framework

class ObservableTimer: ObservableObject {
    
    @Published var value: Int = 0
    //just call @Published to make it capable of being updated in the contentview

    init() {
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self]
            timer in self.value += 1
            //called built in timer function, set it to update every second
        }
    
    }
    
}
