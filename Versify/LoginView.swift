//
//  LoginView.swift
//  Versify
//
//  Created by Kai Linsley on 2/3/23.
//

import SwiftUI

struct LoginView: View {
    
    let backgroundColor = Color.black
    @State var college: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? ""
    
    @State private var selection = "9/JRL"
    let colleges = ["Cowell/Stevenson", "Crown/Merrill", "9/JRL", "Porter/Kresge", "RC/Oakes"]
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Image("affwhite")
                    .resizable()
                    .scaledToFit()
                    .frame(alignment: .top)
                
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
                
                
                NavigationLink(destination: MapView()) {
                    Text("GO")
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
