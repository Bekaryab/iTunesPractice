//
//  TrackView.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
import SwiftUI
import Combine
struct TrackView: View {
    @ObservedObject var viewModel: TrackViewModel
    let trackSelected: (Track) -> Void
    var body: some View {
        List(Array(viewModel.tracks.enumerated()), id: \.offset){
            index, tracks in
            HStack {
                Text("\(index + 1)")
                    //.foregroundColor(.secondary)
                    .font(.system(size: 20, weight: .thin))
                    .font(.subheadline)
                    .frame(width: 30, alignment: .center)
                if let urlString = tracks.artworkUrl100, let url = URL(string: urlString) {
                    AsyncImage(url: url){
                        image in image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                    }placeholder: {
                        ProgressView()
                                .frame(width: 40, height: 40)
                    }
                }
            
                VStack{
                    Text(tracks.trackName ?? "")
                        .font(.system(size: 15))
                        .font(.headline)
                    Text(tracks.collectionName ?? "")
                        .font(.system(size: 10, weight: .thin))
                        .foregroundColor(.secondary)
                        
                }
            }
                .onTapGesture { trackSelected(tracks) }
        }
        .task{
            await viewModel.loadTracks()
        }
    }
}
