import SwiftUI

struct NavigationBarView: View {
    @Binding var selection: Int
    @EnvironmentObject var hideNavBar: HideNavBar

    var body: some View {
        VStack {
            Spacer()
            if !hideNavBar.HideBar { 
                ZStack {
                    VStack(spacing: 0) {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.9607843160629272, green: 0.9607843160629272, blue: 0.9607843160629272, alpha: 1)))
                            .frame(height: 1)
                        RoundedRectangle(cornerRadius: 0)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(height: 83)
                            .opacity(1)
                            .onAppear() {
                                print("NavigationBarView onAppear triggered, setting selection to 2")
                                selection = 2
                            }
                    }
                    HStack(spacing: 81) {
                        Button(action: {
                            self.selection = 1
                        }) {
                            Image(self.selection == 1 ? "LibraryColored" : "Library")
                        }
                        Button(action: {
                            self.selection = 2
                        }) {
                            Image(self.selection == 2 ? "MainColored" : "Main")
                        }
                        Button(action: {
                            self.selection = 3
                        }) {
                            Image(self.selection == 3 ? "AccountColored" : "Account")
                        }
                    }
                    .padding(.bottom, 15)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(selection: .constant(2))
            .previewDevice("iPhone 12")
            .environmentObject(HideNavBar())
    }
}
