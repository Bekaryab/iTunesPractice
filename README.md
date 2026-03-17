# iTunesPractice App 🎵

A professional iOS application built with **SwiftUI** and **UIKit** that allows users to search for albums, view tracklists, and play song previews using the iTunes Search API. 

This project was built as a deep dive into **Clean Architecture (MVVM)** and **Custom Routing** in iOS development.

---

## Features

* **Album Search:** Real-time album search using the iTunes Search API.
* **Tracklist View:** Detailed view of tracks within a selected album with professional numbered indexing.
* **Music Player:** Built-in audio player using `AVFoundation` to play 30-second song previews.
* **Dynamic UI:** A hybrid approach using SwiftUI for the interface and UIKit's `UINavigationController` for navigation logic.

---

## Architecture

The project follows the **MVVM (Model-View-ViewModel)** design pattern combined with a **Router (Coordinator)** pattern to ensure a clean separation of concerns:

* **Model:** Decodable structures for `Album` and `Track` data.
* **View:** Declarative UI built with SwiftUI.
* **ViewModel:** Handles business logic and networking using `Combine` and `@MainActor`.
* **Router:** A dedicated `AppRouter` class that manages navigation using `UIHostingController` to bridge UIKit and SwiftUI.

---

##  Tech Stack

| Category | Technology |
| :--- | :--- |
| **Language** | Swift 5.10+ |
| **Frameworks** | SwiftUI, UIKit, AVFoundation (AVPlayer) |
| **Networking** | Async/Await with URLSession |
| **Data Parsing** | JSONDecoder with Codable |
| **Environment** | Xcode 15+ |

---

## Screenshots & Demo

<p align="center">
  <img src="https://github.com/user-attachments/assets/89c312cd-35d2-49c2-859d-65a23b9d9168" width="250" alt="Album List Screen">
  <img src="https://github.com/user-attachments/assets/4178e768-a5d1-485a-a274-db6c2e2e7a6b" width="250" alt="Tracklist Screen">
 <img src="https://github.com/user-attachments/assets/8adc1b7f-cd56-42f6-a527-2e7a721c1852
" width="250" alt="Play Screen">
</p>

<p align="center">
  <h3>App Demonstration</h3>
  <video src="https://github.com/user-attachments/assets/59449926-e488-4bc3-834e-41da06c9644f" width="300" controls></video>
</p>





