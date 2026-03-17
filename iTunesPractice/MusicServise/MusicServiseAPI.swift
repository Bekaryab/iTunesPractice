//
//  MusicServiseAPI.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//
// https://itunes.apple.com/search?term=taylor&entity=album
// https://itunes.apple.com/lookup?id=COLLECTION_ID&entity=song
import Foundation
class MusicServiceAPI{
    func fetchAlbums(nameOfAuthor: String) async throws -> [Album] {
        guard let urlString = URL(string: "https://itunes.apple.com/search?term=\(nameOfAuthor)&entity=album") else {
            return []
        }
        print("urlString requested: \(urlString)")
        let (data, _) = try await URLSession.shared.data(from: urlString)
        let decode = JSONDecoder()
        
        let decodeData = try decode.decode(AlbumResponse.self, from: data)
        return decodeData.results
    }
    
    func fetchSongs(idOfAlbum: Int) async throws -> [Track]{
        guard let urlString = URL(string: "https://itunes.apple.com/lookup?id=\(idOfAlbum)&entity=song") else {
            return []
        }
        print("song requested:  \(urlString)")
        let(data, _) = try await URLSession.shared.data(from: urlString)
        let decode = JSONDecoder()
        let decodeData = try decode.decode(TrackResponse.self, from: data)
        return decodeData.results 
    }
}
