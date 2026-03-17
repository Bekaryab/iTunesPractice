//
//  PlayerViewModel.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
import SwiftUI
import AVFoundation
import Combine
@MainActor
class PlayerViewModel: ObservableObject{
    let track: Track
    var player: AVPlayer?
    @Published var isPlaying: Bool = false
    init(track: Track){
        self.track = track
        if let urlPreview = track.previewUrl, let url = URL(string: urlPreview){
            self.player = AVPlayer(url: url)
        }
        play()
    }
    
    func play(){
        player?.play()
        isPlaying = true
    }
    func pause(){
        player?.pause()
        isPlaying = false
    }
}
