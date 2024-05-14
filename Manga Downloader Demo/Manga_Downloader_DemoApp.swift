import SwiftUI
import Firebase
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

final class HideNavBar: ObservableObject{
    @Published var HideBar = false
}

final class MenuState: ObservableObject {
    @Published var showMenu: Bool = false
}

@main
struct Manga_Downloader_DemoApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var hideNavBar = HideNavBar()
    @StateObject var menuState = MenuState()
    @State private var Opa = 1.0
    @State private var progress = 0.0
    let timer = Timer.publish(every: 1/400, on: .main, in: .common).autoconnect()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                ContentView().opacity(1)
                    .environmentObject(hideNavBar)
                    .environmentObject(menuState)
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
