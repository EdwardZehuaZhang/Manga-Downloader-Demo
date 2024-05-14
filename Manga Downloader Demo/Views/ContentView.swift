import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var selection = 2
    @EnvironmentObject var hideBar: HideNavBar
    @EnvironmentObject var menuState: MenuState
    @State private var blurnum = 0.0

    init() {
        let transparentAppearence = UITabBarAppearance()
        transparentAppearence.configureWithTransparentBackground()
        UITabBar.appearance().standardAppearance = transparentAppearence
    }

    var body: some View {
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        menuState.showMenu = false
                    }
                }
            }

        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                TabView(selection: $selection) {
                    HistoryView()
                        .tabItem {
                            Text("")
                        }
                        .tag(1)
                    ExploreView(viewModel: viewModel)
                        .disabled(menuState.showMenu)
                        .blur(radius: blurnum)
                        .tabItem {
                            Text("")
                        }
                        .tag(2)
                    AccountView()
                        .tabItem {
                            Text("")
                        }
                        .tag(3)
                }

                ZStack {
                    NavigationBarView(selection: $selection)
                }

                if menuState.showMenu {
                    Color.black.opacity(0.3)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation {
                                menuState.showMenu = false
                            }
                        }

                    MenuContent()
                        .frame(width: 319.9)
                        .transition(.move(edge: .leading))
                        .zIndex(1)
                }
            }
            .gesture(drag)
            .onChange(of: menuState.showMenu) { _ in
                withAnimation {
                    blurnum = menuState.showMenu ? 3 : 0
                }
            }
        }
        .ignoresSafeArea(edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
            .environmentObject(HideNavBar())
            .environmentObject(MenuState())
    }
}
