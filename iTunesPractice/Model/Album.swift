//
//  Album.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
struct AlbumResponse: Codable {
    let resultCount: Int
    let results: [Album]
}

struct Album: Codable, Identifiable{
    let wrapperType: String
    let collectionId: Int
    let artistName: String?
    let collectionName: String?
    let artworkUrl100: String?
    let trackCount: Int?
    let releaseDate: String?
    
    var id: Int {collectionId}
}
