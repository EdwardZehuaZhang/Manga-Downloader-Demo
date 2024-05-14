import SwiftUI

struct CachedAsyncImage: View {
    @State private var uiImage: UIImage?
    let url: URL

    var body: some View {
        Group {
            if let uiImage = uiImage {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
            } else {
                ProgressView()
                    .onAppear {
                        loadImage()
                    }
            }
        }
    }

    private func loadImage() {
        ImageCache.shared.loadImage(from: url) { image in
            DispatchQueue.main.async {
                self.uiImage = image
            }
        }
    }
}
