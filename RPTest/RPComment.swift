//
//  RPComment.swift
//  RPTest
//
//  Created by Danyang Yin on 2019-10-06.
//  Copyright © 2019 Dan's Studio. All rights reserved.
//

import Foundation


// base class RPComment with Encodable protocol
class RPComment: Encodable{
    let name: String
    let comment: String
    init(name: String, comment: String){
        self.name = name
        self.comment = comment
    }
}


// class RPAnnotation as subclass of RPComment
// new var in subclass should be add to CodingKeys and func encode
// CodingKeys is needed otherwise subclass won't listing full var when conveting to json
class RPAnnotaion: RPComment {
    let annotaion: String
    init(name: String, comment: String, annotaion: String) {
        self.annotaion = annotaion
        super.init(name: name, comment: comment)
    }
    private enum CodingKeys: String, CodingKey {
        case annotaion
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.annotaion, forKey: .annotaion)
    }
    
}

