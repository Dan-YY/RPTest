//
//  RPStoreManager.swift
//  RPTest
//
//  Created by Danyang Yin on 2019-10-06.
//  Copyright © 2019 Dan's Studio. All rights reserved.
//

import Foundation


class RPStoreManager {
    // RPStoreManager as a shared instance
    // It helps RPComment and RPComment's subclass to encode to JSON
    // The futrue function of how to post data to remove store chould be write here
    static let sharedInstance = RPStoreManager()
    

    func toJSON(comment: RPComment) -> String{
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(comment)
        return String(data: data, encoding: .utf8)!
    }
    
    func postToStoreA(comment: RPComment) {
        let data = toJSON(comment: comment)
        print("posting data:  \(data) to A")
        // todo: add how to posting data depands on the choosen server
        
    }
    
    func postToStoreB(comment: RPComment) {
        let data = toJSON(comment: comment)
        print("posting data:  \(data) to B")
        // todo: add how to posting data depands on the choosen server
        
    }
}
