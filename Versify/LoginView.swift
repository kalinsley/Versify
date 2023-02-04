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
            }
        }
        
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
