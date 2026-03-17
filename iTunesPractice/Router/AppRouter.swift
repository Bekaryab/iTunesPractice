//
//  AppRouter.swift
//  iTunesPractice
//
//  Created by bekarys abiev on 16.03.2026.
//

import Foundation
import SwiftUI
import UIKit
class AppRouter{
    let navigationController: UINavigationController
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func start(){
        let viewModel = AlbumViewModel()
        let view = AlbumView(viewModel: viewModel, onAlbumSelected: {
            album in
            self.showTracks(for: album)
        })
        let vc = UIHostingController(rootView: view)
        navigationController.setViewControllers([vc], animated: false)
    }
    
    func showTracks(for album: Album){
        let viewModel = TrackViewModel(album: album)
        let view = TrackView(viewModel: viewModel, trackSelected: {
            track in
            self.playMusic(for: track)
        })
        let vc = UIHostingController(rootView: view)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func playMusic(for track: Track){
        let viewModel = PlayerViewModel(track: track)
        let view = PlayView(viewModel: viewModel)
        let vc = UIHostingController(rootView: view)
        navigationController.pushViewController(vc, animated: true)
    }
    
}
