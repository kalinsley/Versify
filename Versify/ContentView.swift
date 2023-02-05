//
//  ContentView.swift
//  Versify
//
//  Created by Kai Linsley on 2/3/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            HomeView()
            /* if UserDefaults.standard.bool(forKey: "existingUser") {
                HomeView() 
            } else {
                MapView()
            }
             */
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
