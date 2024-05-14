import Foundation
import Firebase

class ViewModel: ObservableObject{
    @Published var list = [Popular]()
    var isDataLoaded = false
    
    func getData(){
        if isDataLoaded { return }
        let db = Firestore.firestore()
        
        db.collection("Popular").getDocuments { snapshot, error in
            if let error = error {
                print("Error getting documents: \(error)")
            } else if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map{ d in
                            return Popular(id: d.documentID,
                                           name: d["name"] as? String ?? "",
                                           author: d["author"] as? String ?? "",
                                           cover: d["cover"] as? String ?? "",
                                           info: d["info"] as? String ?? "",
                                           rating: d["rating"] as? String ?? "",
                                           status: d["status"] as? String ?? "",
                                           tag1: d["tag1"] as? String ?? "",
                                           tag2: d["tag2"] as? String ?? "",
                                           tag3: d["tag3"] as? String ?? "",
                                           tag4: d["tag4"] as? String ?? "",
                                           tag5: d["tag5"] as? String ?? ""
                            )
                        }
                        print("Loaded \(self.list.count) items")

                    }
            }
        }
        isDataLoaded = true
    }

}
