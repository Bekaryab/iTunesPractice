//
//  PlayView.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 17.03.2026.
//

import Foundation
import SwiftUI
import Combine

struct PlayView: View {
    @ObservedObject var viewModel: PlayerViewModel
    
    var body: some View {
        VStack{
            if let urlImage = URL(string: viewModel.track.artworkUrl100 ?? ""){
                AsyncImage(url: urlImage){
                    phase in
                    if let image = phase.image{
                        image.resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                    }else{
                        ProgressView()
                    }
                }
            }
            Text(viewModel.track.trackName ?? "")
            Button {
                
                if viewModel.isPlaying {
                    viewModel.pause()
                } else {
                    viewModel.play()
                }
            } label: {
                Image(systemName: viewModel.isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.blue)
                    .contentTransition(.symbolEffect(.replace)) 
            }
        }
    }
}
