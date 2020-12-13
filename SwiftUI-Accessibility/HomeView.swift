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
