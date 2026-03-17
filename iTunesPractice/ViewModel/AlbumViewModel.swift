//
//  AlbumViewModel.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
import SwiftUI
import Combine
@MainActor
class AlbumViewModel: ObservableObject{
    @Published var albums: [Album] = []
    private let service = MusicServiceAPI()
    
    func loadAlbums(nameOfAuthor: String) async{
        do{
            let res = try await service.fetchAlbums(nameOfAuthor: nameOfAuthor)
            albums = res
        }catch{
            print("Error: \(error.localizedDescription)")
        }
    }
}
