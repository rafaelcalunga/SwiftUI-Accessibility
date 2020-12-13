//
//  HomeUIView.swift
//  SwiftUI-Accessibility
//
//  Created by Rafael Calunga on 2020-12-13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AccessibilityView01()) {
                    Text("Identifying views with useful labels")
                }
                NavigationLink(destination: AccessibilityView02()) {
                    Text("Hiding and grouping accessibility data")
                }
                NavigationLink(destination: AccessibilityView03()) {
                    Text("Reading the value of controls")
                }
            }
            .navigationBarTitle("Accessibility examples")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
