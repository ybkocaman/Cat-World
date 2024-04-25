//
//  Breed.swift
//  Cat World
//
//  Created by Yusuf Burak on 25/04/2024.
//

import Foundation

struct Breed: Codable, Hashable, Identifiable {
    let id: String
    let name: String
    let origin: String
    let temperament: String
    let description: String
    let referenceImageId: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case origin
        case temperament
        case description
        case referenceImageId = "reference_image_id"
    }
    
    static let example = Breed(id: "tvan", name: "Turkish Van", origin: "Turkey", temperament: "Agile, Intelligent, Loyal, Playful, Energetic", description: "While the Turkish Van loves to jump and climb, play with toys, retrieve and play chase, she is is big and ungainly; this is one cat who doesn’t always land on his feet. While not much of a lap cat, the Van will be happy to cuddle next to you and sleep in your bed. ", referenceImageId: "sxIXJax6h")
    
}
