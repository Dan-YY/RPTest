//
//  ViewController.swift
//  RPTest
//
//  Created by Danyang Yin on 2019-10-06.
//  Copyright © 2019 Dan's Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let comment = RPComment(name: "nameA", comment: "commentA")
        let annotation = RPAnnotaion(name: "nameB", comment: "commentB", annotaion: "annotaionB")

        let storeManager = RPStoreManager.sharedInstance
        storeManager.postToStoreA(comment: comment)
        storeManager.postToStoreB(comment: annotation)
        
    }


}

