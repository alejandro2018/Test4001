//
//  ViewModelOne.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import Foundation

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Observation

@Observable
class ViewModelOne {
    
    var datas = [One]()

    func getdata() {
        
        let db = Firestore.firestore()
        let collectionRef = db.collection("test01")
            
        collectionRef.getDocuments { (snap, err) in
            
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documents {
                
                let title = i.get("title") as! String
                let description = i.get("description") as! String
                
                self.datas.append(One(title: title, description: description))
                
            }
        }
    }
    
}


