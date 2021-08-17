//
//  VehicleDetails.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

struct VehicleDetails: Decodable {
    
    let name: String
    let model: String
    let manufacturer: String
    let costInCredits: String
    let length: String
    let maxAtmospheringSpeed: String
    let crew: String
    let passengers: String
    let cargoCapacity: String
    let consumables: String
    let vehicleClass: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case model
        case manufacturer
        case costInCredits = "cost_in_credits"
        case length = "length"
        case maxAtmospheringSpeed = "max_atmosphering_speed"
        case crew
        case passengers
        case cargoCapacity = "cargo_capacity"
        case consumables
        case vehicleClass = "vehicle_class"
    }
}

extension VehicleDetails: Displayable {
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
        ("CLASS", vehicleClass)
    }
    var item3: (label: String, value: String) {
        ("COST IN CREDITS", costInCredits)
    }
    var item4: (label: String, value: String) {
        ("CREW", crew)
    }
    var item5: (label: String, value: String) {
        ("CARGO CAPACITY", cargoCapacity)
    }
}
