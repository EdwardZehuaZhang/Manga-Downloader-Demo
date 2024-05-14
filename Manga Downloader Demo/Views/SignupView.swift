import SwiftUI

struct SignupView: View {
    @EnvironmentObject var hideBar: HideNavBar
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("Login UI")
                        .padding(15)
                        .onAppear {
                            hideBar.HideBar = true
                        }
                        .onDisappear {
                            hideBar.HideBar = false
                        }
                }
                .gesture(DragGesture()
                            .onChanged { value in
                                // Detect the rightward drag
                                if value.translation.width > 100 {
                                    self.presentationMode.wrappedValue.dismiss()
                        }
                    }
                )
            }
            .padding(.top, 40)
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
            .environmentObject(HideNavBar())
            .previewDevice("iPhone 12")
    }
}
