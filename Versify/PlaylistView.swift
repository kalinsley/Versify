//
//  PlaylistView.swift
//  Versify
//
//  Created by Kai Linsley on 2/4/23.
//

import SwiftUI
import MapKit

struct PlaylistView: View {
    let backgroundColor = Color.black
    @State private var selection: String?
    
    let playlists = ["Cowell/Stevenson", "Crown/Merrill", "9/JRL", "Porter/Kresge", "RC/Oakes"]
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Image("slug2")
                    .resizable()
                    .scaledToFit()
                Image("playlists")
                    .resizable()
                    .scaledToFit()
                Section {
                    // playlist #1
                    if UserDefaults.standard.string(forKey: "COLLEGE_TEXT") == "Cowell/Stevenson" {
                        HStack {
                            Link("Cowell/Stevenson", destination: URL(string: "https://open.spotify.com/playlist/7pfqvX9xpuXsGuHM8j9aQK?si=07f4c3f9d1ee4c9e&pt=90385406873d45bfaf0c0acb8b576560")!)
                                .bold()
                                .font(.title3)
                                .frame(maxWidth: 250, maxHeight: 35)
                                .foregroundColor(.black)
                                .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                            
                            Image(systemName: "house.fill")
                        }
                    } else {
                        Link("Cowell/Stevenson", destination: URL(string: "https://open.spotify.com/playlist/37i9dQZF1DX0XUsuxWHRQd?si=3d11971b615c413a")!)
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    }
                    
                    // playlist #2
                    if UserDefaults.standard.string(forKey: "COLLEGE_TEXT") == "Crown/Merrill" {
                        HStack {
                            Link("Crown/Merrill", destination: URL(string: "https://open.spotify.com/playlist/7vc628XvA1u2J8d2bSafTp?si=b1c5bb7238484528&pt=982134fb1c73eef00478177bac23de30")!)
                                .bold()
                                .font(.title3)
                                .frame(maxWidth: 250, maxHeight: 35)
                                .foregroundColor(.black)
                                .background(Color("VersifyGreen"))
                                .cornerRadius(100)
                        }
                    } else {
                        Link("Crown/Merrill", destination: URL(string: "https://open.spotify.com/playlist/7vc628XvA1u2J8d2bSafTp?si=0561986a828c4e8b")!)
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    }
                    
                    // playlist #3
                    if UserDefaults.standard.string(forKey: "COLLEGE_TEXT") == "9/JRL" {
                        Link("9/JRL", destination: URL(string: "https://open.spotify.com/playlist/3b4z2EvYZtTE7MjoCuwm3P?si=4636dd5bdcaf44e3&pt=9ed8d7a48c290fe1276405bc729d02d0")!)
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    } else {
                        Link("9/JRL", destination: URL(string: "https://open.spotify.com/playlist/3b4z2EvYZtTE7MjoCuwm3P?si=e90b1d2355a241f3")!)
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    }
                    
                    // playlist #4
                    if UserDefaults.standard.string(forKey: "COLLEGE_TEXT") == "Porter/Kresge"{
                        Link("Porter/Kresge", destination: URL(string: "https://open.spotify.com/playlist/2nfmGjAFy6AUQrKV3hOJjT?si=208d0a9305fa4b05&pt=fd7d40d0df7aaff96196999369320bec")!)
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    } else {
                        Link("Porter/Kresge", destination: URL(string: "https://open.spotify.com/playlist/2nfmGjAFy6AUQrKV3hOJjT?si=c92adf3015824a0c")!)
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    }
                    
                    // playlist #5
                    if UserDefaults.standard.string(forKey: "COLLEGE_TEXT") == "RC/Oakes" {
                        Link("RC/Oakes", destination: URL(string: "https://open.spotify.com/playlist/2XRBfwmlBlDsHZoXB418gl?si=566ca704d2824848&pt=38a496ff52d9ba63557d7630e850cb26")!)
                            .bold()
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    } else {
                        Link("RC/Oakes", destination: URL(string: "https://open.spotify.com/playlist/2XRBfwmlBlDsHZoXB418gl?si=e58c668177aa495a")!)
                            .font(.title3)
                            .frame(maxWidth: 250, maxHeight: 35)
                            .foregroundColor(.black)
                            .background(Color("VersifyGreen"))
                            .cornerRadius(100)
                    }
                }
                
                NavigationLink(destination: MapView(location: CLLocationCoordinate2D(latitude: 36.974117, longitude: -122.030792))) {
                    Text("Explore Versify!")
                }
                .bold()
                .font(.title3)
                .frame(maxWidth: 325, maxHeight: 55)
                .foregroundColor(.black)
                .background(Color("VersifyGreen"))
                .cornerRadius(100)
                .padding(.top, 65)
            }
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
