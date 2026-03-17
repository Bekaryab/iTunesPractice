//
//  TrackViewModel.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
import SwiftUI
import UIKit
import Combine
@MainActor
class TrackViewModel: ObservableObject {
    @Published var tracks: [Track] = []
    private var service = MusicServiceAPI()
    private let album: Album
    init(album: Album){
        self.album = album
    }
    
    func loadTracks() async {
        do{
            let res = try await service.fetchSongs(idOfAlbum: album.collectionId)
            tracks = res.filter { $0.wrapperType == "track" }  
        }catch{
            print("Error: \(error.localizedDescription)")
        }
    }
    
}
