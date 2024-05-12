import SwiftUI
    
struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State private var selection = 2
    @EnvironmentObject var hideBar : HideNavBar
    @State var showMenu = false
    @State private var blurnum = 0.0

    init() {
        let transparentAppearence = UITabBarAppearance()
        transparentAppearence.configureWithTransparentBackground() // 🔑
        UITabBar.appearance().standardAppearance = transparentAppearence
    }
    
    var body: some View {
        
        let drag = DragGesture()
                    .onEnded {
                        if $0.translation.width < -100 {
                            withAnimation {
                                self.showMenu = false
                            }
                        }
                    }
        
        GeometryReader { geometry in
            ZStack(alignment: .leading){
                TabView(selection: $selection) {
                    HistoryView()
                        .tabItem{
                            Text("")
                            }
                        .tag(1)
                    ExploreView(viewModel: viewModel, showMenu: self.$showMenu)
                        .disabled(self.showMenu ? true : false)
                        .blur(radius: blurnum)
                        .tabItem{
                            Text("")
                        }
                        .tag(2)
                    AccountView()
                        .tabItem{
                            Text("")
                    }
                        .tag(3)
                }
                ZStack{
                    NavigationBarView(selection: $selection)
                }
                if self.showMenu{
                    MenuContent()
                        .offset(y:-47)
                        .frame(minWidth: 319.9)
                        .transition(.move(edge: .leading))
                        .onAppear(){blurnum = 3}
                        .onDisappear(){blurnum = 0}
                }
            }
            .gesture(drag)
            
        }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        ContentView()
            .previewDevice("iPhone 12")
            .environmentObject(HideNavBar())
    }
}
