//
//  LoginView.swift
//  Versify
//
//  Created by Kai Linsley on 2/3/23.
//

import SwiftUI

struct LoginView: View {
    let backgroundColor = Color.black

    let userDefaults = UserDefaults.standard
    
    @AppStorage("savedCollege") var savedCollege = ""
    @AppStorage("existingUser") var existingUser = true
    
    @State private var selection: String =  ""
    
    let colleges = ["Cowell/Stevenson", "Crown/Merrill", "9/JRL", "Porter/Kresge", "RC/Oakes"]
    
    var body: some View {
        ZStack {
            // for black background
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Image("aff2")
                    .resizable()
                    .scaledToFit()
                    .frame(alignment: .top)
                
                // select affiliation, picker style inline or menu
                Picker("", selection: $selection) {
                    ForEach(colleges, id: \.self) {
                        Text($0)
                            .foregroundColor(.white)
                    }
                }
                .pickerStyle(.inline)
                .frame(maxWidth: 300, maxHeight: 320)
                .padding(.top)
                .padding(.bottom)
            
                // go -> mapview after selecting college
                NavigationLink(destination: PlaylistView().onAppear {
                    UserDefaults.standard.set(selection, forKey: "COLLEGE_TEXT")
                    savedCollege = selection
                    existingUser = true
                }) {
                    Text("Login")
                }
                    .bold()
                    .font(.title3)
                    .frame(maxWidth: 250, maxHeight: 55)
                    .foregroundColor(.black)
                    .background(Color("VersifyGreen"))
                    .cornerRadius(100)
                    .padding(.bottom)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
