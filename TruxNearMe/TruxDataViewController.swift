//
//  TruxDataViewController.swift
//  TruxNearMe
//
//  Created by Mark Corrado on 5/3/17.
//  Copyright © 2017 Mark Corrado. All rights reserved.
//

import UIKit
import FirebaseDatabase

class TruxDataViewController : UIViewController {
    
    var ref: FIRDatabaseReference!

    @IBOutlet var textField: UITextField!
    
    @IBAction func addDataToDatabase(_ button: UIButton) {
        self.ref.child("truxs").child("2").setValue(["username": textField.text])
    }
    
    override func viewDidLoad() {
        ref = FIRDatabase.database().reference(withPath: "trux-near-me")
    }
}
