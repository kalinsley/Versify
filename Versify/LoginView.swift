//
//  LoginView.swift
//  Versify
//
//  Created by Kai Linsley on 2/3/23.
//

import SwiftUI
import UIKit

struct LoginView: View {
    // background color hex #5fdda0
    let backgroundColor = Color.black
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Image("Vlogo")
                    .resizable()
                    .scaledToFit()
                Link("Spotify Login", destination: URL(string: "https://accounts.spotify.com/en/login")!)
                        .bold()
                        .frame(width: 200, height: 45)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(100)
            }
        }
        
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
