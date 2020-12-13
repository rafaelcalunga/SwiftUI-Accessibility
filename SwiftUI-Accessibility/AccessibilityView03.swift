//
//  AccessibilityView03.swift
//  SwiftUI-Accessibility
//
//  Created by Rafael Calunga on 2020-12-13.
//

import SwiftUI

struct AccessibilityView03: View {
    @State private var estimate = 25.0
    @State private var rating = 3
    
    var body: some View {
        VStack {
            Slider(value: $estimate, in: 0...50)
                .accessibility(value: Text("\(Int(estimate))"))
            
            Stepper("Rate our service: \(rating)/5", value: $rating, in: 1...5)
                .accessibility(value: Text("\(rating) out of 5"))
        }
        .padding()
    }
}

struct AccessibilityView03_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilityView03()
    }
}
