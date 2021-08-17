//
//  Starships.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

struct Starships: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let all: [StarshipDetails]
  
    enum CodingKeys: String, CodingKey {
        case count
        case next
        case previous
        case all = "results"
    }
}
