//
//  DataModel.swift
//  jsonParsingArray
//
//  Created by Macbook on 27/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import Foundation


struct Courses : Codable {
    
    let id : Int
    let name : String
    let link :String
    let imageUrl : String
    let number_of_lessons : Int
}
