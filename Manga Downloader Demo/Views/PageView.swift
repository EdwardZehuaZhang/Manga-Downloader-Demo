import SwiftUI

struct PageView: View {
    @EnvironmentObject var hideBar: HideNavBar
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            ScrollView(.vertical) {
                VStack {
                    if let url = URL(string: "https://i.ibb.co/yFfkDKM/1.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/f2HCTQB/2.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/kgWY5NK/3.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/mSNwPSk/4.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/QH30C3W/5.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/hcd5gVy/6.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/d7yNN9v/7.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/H472LzK/8.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/7VSncd8/9.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/3zDMbNg/10.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/QY8MDXN/11.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    if let url = URL(string: "https://i.ibb.co/1ZzWPjC/12.jpg") {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }
                .gesture(DragGesture()
                    .onEnded { value in
                        if value.translation.width > 100 {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }
                )
                .padding(.top, 40)
                .ignoresSafeArea()
            }
        }
        .navigationBarHidden(true)
        .onAppear {
            print("PageView appeared")
            hideBar.HideBar = true
            print("Page HideBar changed to: \(hideBar.HideBar)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .environmentObject(HideNavBar())
            .previewDevice("iPhone 12")
    }
}
