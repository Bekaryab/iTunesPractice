//
//  AlbumView.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
import SwiftUI
import Combine
struct AlbumView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var nameOfAuthor: String = ""
    @ObservedObject var viewModel: AlbumViewModel 
    let onAlbumSelected: (Album) -> Void
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bg")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .blur(radius: 30)
                ScrollView{
                    LazyVGrid(columns: columns){
                        ForEach(viewModel.albums){
                            album in
                            VStack{
                                if let urlImage = URL(string: album.artworkUrl100 ?? ""){
                                    AsyncImage(url: urlImage){ phase in
                                        if let image = phase.image{
                                            image
                                                .resizable()
                                                .scaledToFit()
                                        }
                                        else{
                                            ProgressView()
                                        }
                                    }
                                    .frame(width: 120, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                
                                Text(album.artistName ?? "Unknown Artist")
                                Text(album.collectionName ?? "Unknown Album")
                            }
                            .onTapGesture {
                                onAlbumSelected(album)
                            }
                            
                        }
                    }
                    
                }
            }
            .searchable(text: $nameOfAuthor)
            .onSubmit(of: .search) {
                Task{
                    await viewModel.loadAlbums(nameOfAuthor: nameOfAuthor)
                }
            }
        }
    }
}
