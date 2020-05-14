//
//  RelatedTopic.swift
//  jsonparsing
//
//  Created by michael ion on 5/14/20.
//  Copyright © 2020 michael ion. All rights reserved.
//

import Foundation

struct RelatedTopic: Codable {
    // only want text, result, icon
    
    var status:String = "" // or could make it an options status:String?
    var text:String
    var result:String
    var icon:[Icons]? // will need to create another structure to represent these json of objects inside
    
}
