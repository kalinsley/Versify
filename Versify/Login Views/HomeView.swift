//
//  HomeView.swift
//  Versify
//
//  Created by Kai Linsley on 2/3/23.
//

import SwiftUI
import UIKit

struct HomeView: View {
    // background color hex #5fdda0
    
    let backgroundColor = Color.black
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor
                    .ignoresSafeArea()
                VStack {
                    Image("vlogo2")
                        .resizable()
                        .padding()
                        .frame(width: 600, height: 550)
                        .scaledToFit()
                        
                    if UserDefaults.standard.bool(forKey: "existingUser") {
                        NavigationLink(destination: PlaylistView()) {
                            Text("Welcome!")
                        }
                        .bold()
                        .font(.title3)
                        .frame(width: 250, height: 55)
                        .foregroundColor(.black)
                        .background(Color("SpotifyGreen"))
                        .cornerRadius(100)
                        .padding(.bottom)
                    } else {
                        NavigationLink(destination: LoginView()) {
                            Text("Welcome to Versify!")
                        }
                        .bold()
                        .font(.title3)
                        .frame(width: 250, height: 55)
                        .foregroundColor(.black)
                        .background(Color("VersifyGreen"))
                        .cornerRadius(100)
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
