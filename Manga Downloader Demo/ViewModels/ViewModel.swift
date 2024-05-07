//
//  ViewModel.swift
//  Manga Downloader Demo
//
//  Created by 24EdwardZ on 17/2/22.
//

import Foundation
import Firebase

class ViewModel: ObservableObject{
    
    @Published var list = [Popular]()
    
    func getData(){
        
        //get a reference to the database
        let db = Firestore.firestore()
        
        //read the documents at a specific point
        db.collection("Popular").getDocuments { snapshot, error in
            
            //check for errors
            if error == nil {
                //no errors
                
                if let snapshot = snapshot{
                    
                    //update property in main thread
                    DispatchQueue.main.async {
                        
                        //get all document and create todos
                        self.list = snapshot.documents.map{ d in
                            
                            //create a popular item for each document returned
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
                    }
                    
                   
                }
            }
            else{
                //handel error
                
            }
        }
    }

}
