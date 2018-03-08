//
//  Response.swift
//  Ground Control Survey
//
//  Created by Andrew Madsen on 2/23/18.
//  Copyright © 2018 Andrew Madsen. All rights reserved.
//

import Foundation

struct Response {
    var question: String
    var didAnswerYes: Bool
    var rating: Int
    var maximumPossibleRating: Int
    var comments: String?
}
