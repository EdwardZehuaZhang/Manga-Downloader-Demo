//
//  Manga_Downloader_DemoApp.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 15/2/22.
//

import SwiftUI
import Firebase

final class HideNavBar: ObservableObject{
    @Published var HideBar = false
}


@main
struct Manga_Downloader_DemoApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    @StateObject var hideNavBar = HideNavBar()
    @State private var Opa = 1.0
    @State private var progress = 0.0
    let timer = Timer.publish(every: 1/400, on: .main, in: .common).autoconnect()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                ContentView().opacity(1)
                    .environmentObject(hideNavBar)
                LaunchScreen().opacity(Opa)
                }
            .onReceive(timer) { _ in
                            if progress < 1000 {
                                progress += 1
                            }
                            else{
                                self.Opa -= 1.0
                            }
            }
        }
    }
}
    
