//
//  AccessibilityView02.swift
//  SwiftUI-Accessibility
//
//  Created by Rafael Calunga on 2020-12-13.
//

import SwiftUI

struct AccessibilityView02: View {
    var body: some View {
        
        VStack {
            Image(decorative: "nicolas-tissot-335096")
                .accessibility(hidden: true)
            
            // With that modifier the image becomes invisible to VoiceOver regardless of what traits it has.
        
            VStack {
                Text("Your score is")
                Text("1000")
                    .font(.title)
            }
            .accessibilityElement(children: .ignore)
            .accessibility(label: Text("Your score is 1000"))
            
            //Using .ignore and a custom label means the text is read all at once, and is much more natural.
        }
    }
}

struct AccessibilityView02_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilityView02()
    }
}
