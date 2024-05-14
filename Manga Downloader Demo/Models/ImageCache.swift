import Foundation
import UIKit

class ImageCache {
    static let shared = ImageCache()
    private let cache = URLCache(memoryCapacity: 100 * 1024 * 1024, diskCapacity: 500 * 1024 * 1024, diskPath: "imageCache")

    func loadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        let request = URLRequest(url: url)

        if let cachedResponse = cache.cachedResponse(for: request),
           let image = UIImage(data: cachedResponse.data) {
            completion(image)
            return
        }

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, let response = response, error == nil else {
                completion(nil)
                return
            }

            let cachedData = CachedURLResponse(response: response, data: data)
            self.cache.storeCachedResponse(cachedData, for: request)

            let image = UIImage(data: data)
            completion(image)
        }.resume()
    }
}

