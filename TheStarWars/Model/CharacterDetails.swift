//
//  CharacterDetails.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

struct CharacterDetails: Decodable {
    
    let name: String
    let height: String
    let mass: String
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let birthYear: String
    let gender: String
    let homeWorld: String
    
    enum  CodingKeys: String, CodingKey {
        case name
        case height
        case mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender
        case homeWorld = "homeworld"
    }
}

extension CharacterDetails: Displayable {
    var titleLabelText: String {
        name
    }
    var subtitleLabelText: String {
        ""
    }
    var item1: (label: String, value: String) {
        ("Birth Year", birthYear)
    }
    var item2: (label: String, value: String) {
        ("Height", height)
    }
    var item3: (label: String, value: String) {
        ("Mass", mass)
    }
    var item4: (label: String, value: String) {
        ("GENDER", gender)
    }
    var item5: (label: String, value: String) {
        ("HAIR COLOR", hairColor)
    }
}
