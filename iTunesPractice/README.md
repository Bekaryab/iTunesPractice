#iTunesPractice App
A professional iOS application built with SwiftUI and UIKit that allows users to search for albums, view tracklists, and play song previews using the iTunes Search API. This project was built as a deep dive into Clean Architecture (MVVM) and Custom Routing in iOS development.
 ##Features
•    Album Search: Real-time album search using the iTunes API.
•    Tracklist View: Detailed view of tracks within a selected album with numbered indexing.
•    Music Player: Built-in audio player using AVFoundation to play 30-second song previews.
•    Dynamic UI: A hybrid approach using SwiftUI for the interface and UIKit's UINavigationController for navigation logic.
##Architecture
The project follows the MVVM (Model-View-ViewModel) design pattern combined with a Router (Coordinator) pattern to ensure a clean separation of concerns:
•    Model: Decodable structures for Album and Track data.
•    View: Declarative UI built with SwiftUI.
•    ViewModel: Handles business logic and networking using Combine and @MainActor.
•    Router: A dedicated AppRouter class that manages navigation using UIHostingController to bridge UIKit and SwiftUI.
##Tech Stack
•    Language: Swift 5.10+
•    Frameworks: SwiftUI, UIKit, AVFoundation (AVPlayer).
•    Networking: Async/Await with URLSession.
•    Data Parsing: JSONDecoder with Codable.
•    Environment: Xcode 15+

/Users/bekarysabiev/Desktop/IOS/iTunesPractice/iTunesPractice/Screenshots/p1.jpg
/Users/bekarysabiev/Desktop/IOS/iTunesPractice/iTunesPractice/Screenshots/p2.jpg
/Users/bekarysabiev/Desktop/IOS/iTunesPractice/iTunesPractice/Screenshots/p3.jpg
 
/Users/bekarysabiev/Downloads/IMG_8295.MOV
