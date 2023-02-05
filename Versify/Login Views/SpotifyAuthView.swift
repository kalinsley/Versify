//
//  SpotifyAuthView.swift
//  Versify
//
//  Created by Kai Linsley on 2/4/23.
//

import SwiftUI

struct SpotifyAuthView: View {
    let backgroundColor = Color.black
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundColor
                    .ignoresSafeArea()
                
                VStack {
                    Image("versification")
                        .resizable()
                        .scaledToFit()

                    Image("slogo")
                        .resizable()
                        .scaledToFit()
                        .padding(.bottom)
                    
                    Link("Login", destination: URL(string: "https://accounts.spotify.com/en/login")!)
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 55)
                            .foregroundColor(.black)
                            .background(Color("SpotifyGreen"))
                            .cornerRadius(100)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: HomeView()) {
                        Text("Next")
                        Image(systemName: "arrowshape.turn.up.right")
                            .resizable()
                            .scaledToFit()
                    }
                        .font(.title2)
                        .frame(maxWidth: 125, maxHeight: 50)
                        .foregroundColor(.black)
                        .background(Color("VersifyGreen"))
                        .cornerRadius(100)
                        .padding(.bottom)
                }
            }
        }
    }
}

struct SpotifyAuthView_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyAuthView()
    }
}
