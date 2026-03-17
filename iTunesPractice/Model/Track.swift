//
//  Track.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
struct TrackResponse: Codable {
    let resultCount: Int
    let results: [Track]
}

struct Track: Codable, Identifiable{
    let wrapperType: String
    let trackId: Int?
    let trackName: String?
    let artistName: String?
    let collectionName: String?
    let trackNumber: Int?
    let trackTimeMillis: Int?
    let previewUrl: String?
    let artworkUrl100: String?
    
    var id: Int {trackId ?? 0}
}
