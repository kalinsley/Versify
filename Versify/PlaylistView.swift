//
//  PlaylistView.swift
//  Versify
//
//  Created by Kai Linsley on 2/4/23.
//

import SwiftUI
import MapKit

struct PlaylistView: View {
    @State private var selection: String?
    
    let playlists = ["Cowell/Stevenson", "Crown/Merrill", "9/JRL", "Porter/Kresge", "RC/Oakes"]
    
    var body: some View {
        VStack {
                Form {
                    Link("Cowell/Stevenson", destination: URL(string: "https://open.spotify.com/playlist/37i9dQZF1DX0XUsuxWHRQd?si=3d11971b615c413a")!)
                    Link("Crown/Merrill", destination: URL(string: "https://open.spotify.com/playlist/37i9dQZF1DX9sIqqvKsjG8?si=73ad450616c54255")!)
                    Link("9/JRL", destination: URL(string: "https://open.spotify.com/playlist/37i9dQZF1DXcBWIGoYBM5M?si=723bce3cf61e4632")!)
                    Link("Porter/Kresge", destination: URL(string: "https://open.spotify.com/playlist/37i9dQZF1DX0SM0LYsmbMT?si=694d28289d5c40d0")!)
                    Link("RC/Oakes", destination: URL(string: "https://open.spotify.com/playlist/37i9dQZF1DX5Ejj0EkURtP?si=0a1979289a48424b")!)
                }
                NavigationLink(destination: MapView(location: CLLocationCoordinate2D(latitude: 36.974117, longitude: -122.030792))) {
                    Text("Explore the Verse!")
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

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
