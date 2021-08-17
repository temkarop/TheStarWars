//
//  StarshipDetails.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

struct StarshipDetails: Decodable {
    let name: String
    let model: String
    let manufacturer: String
    let costInCredits: String
    let length: String
    let maxAtmospheringSpeed: String
    let crew: String
    let passengerTotal: String
    let cargoCapacity: String
    let consumables: String
    let hyperdriveRating: String
    let starshipClass: String
  
    enum CodingKeys: String, CodingKey {
        case name
        case model
        case manufacturer
        case costInCredits = "cost_in_credits"
        case length
        case maxAtmospheringSpeed = "max_atmosphering_speed"
        case crew = "crew"
        case passengerTotal = "passengers"
        case cargoCapacity = "cargo_capacity"
        case consumables
        case hyperdriveRating = "hyperdrive_rating"
        case starshipClass = "starship_class"
    }
}

extension StarshipDetails: Displayable {
    var titleLabelText: String {
        name
    }
    var subtitleLabelText: String {
        model
    }
    var item1: (label: String, value: String) {
        ("MANUFACTURER", manufacturer)
    }
    var item2: (label: String, value: String) {
        ("CLASS", starshipClass)
    }
    var item3: (label: String, value: String) {
        ("COST IN CREDITS", costInCredits)
    }
    var item4: (label: String, value: String) {
        ("CREW", crew)
    }
    var item5: (label: String, value: String) {
        ("HYPERDRIVE RATING", hyperdriveRating)
    }
}
