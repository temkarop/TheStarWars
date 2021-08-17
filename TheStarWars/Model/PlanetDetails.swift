//
//  PlanetDetails.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

struct PlanetDetails: Decodable {
    
    let name: String
    let rotationPeriod: String
    let orbitalPeriod: String
    let diameter: String
    let climate: String
    let gravity: String
    let terrain: String
    let surfaceWater: String
    let population: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case rotationPeriod = "rotation_period"
        case orbitalPeriod = "orbital_period"
        case diameter
        case climate
        case gravity
        case terrain
        case surfaceWater = "surface_water"
        case population
    }
}

extension PlanetDetails: Displayable {
    var titleLabelText: String {
        name
    }
    var subtitleLabelText: String {
        ""
    }
    var item1: (label: String, value: String) {
        ("DIAMETER", diameter)
    }
    var item2: (label: String, value: String) {
        ("CLIMATE", climate)
    }
    var item3: (label: String, value: String) {
        ("GRAVITY", gravity)
    }
    var item4: (label: String, value: String) {
        ("TERRAIN", terrain)
    }
    var item5: (label: String, value: String) {
        ("POPULATION", population)
    }
}
