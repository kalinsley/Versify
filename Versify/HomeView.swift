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
    @State var navigated = false
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor
                    .ignoresSafeArea()
                    VStack {
                        Image("vlogo")
                            .resizable()
                            .padding()
                            .frame(width: 600, height: 550)
                            .scaledToFit()
                        
                        Link("Spotify Login",
                             destination: URL(string: "https://accounts.spotify.com/en/login")!)
                                    .bold()
                                    .font(.title3)
                                    .frame(maxWidth: 250, maxHeight: 55)
                                    .foregroundColor(.black)
                                    .background(Color("VersifyGreen"))
                                    .cornerRadius(100)
                                    .padding(.bottom)
                        NavigationLink(destination: LoginView()) {
                            Text("Versify Map")
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
