//
//  PlaylistView.swift
//  Versify
//
//  Created by Kai Linsley on 2/4/23.
//

import SwiftUI

struct PlaylistView: View {
    @State private var selection: String?
    
    let playlists = ["Cowell/Stevenson", "Crown/Merrill", "9/JRL", "Porter/Kresge", "RC/Oakes"]
    
    var body: some View {
        List(playlists, id: \.self, selection: $selection) {playlist in
            Text(playlist)
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
