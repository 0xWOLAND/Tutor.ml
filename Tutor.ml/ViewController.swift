//
//  ViewController.swift
//  Tutor.ml
//
//  Created by Bhargav Annem on 7/31/20.
//  Copyright © 2020 Bhargav Annem. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
class ViewController: UIViewController {
    @IBOutlet weak var UsernameOutlet: UITextField!
    
    @IBOutlet weak var PasswordOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        let db = Firestore.firestore()
        db.collection("Login").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
//                    print("\(document.documentID) => \(document.data())")
                    let data = document.data()
                }
            }
        }
        
    }
    
}

