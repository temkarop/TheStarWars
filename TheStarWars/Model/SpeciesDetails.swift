//
//  SpeciesDetails.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

struct SpeciesDetails: Decodable {
    
    let name: String
    let classification: String
    let designation: String
    let averageHeight: String
    let skinColors: String
    let hairColors: String
    let eyeColors: String
    let averageLifespan: String
    let language: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case classification
        case designation
        case averageHeight = "average_height"
        case skinColors = "skin_colors"
        case hairColors = "hair_colors"
        case eyeColors = "eye_colors"
        case averageLifespan = "average_lifespan"
        case language
    }
}

extension SpeciesDetails: Displayable {
    var titleLabelText: String {
        name
    }
    var subtitleLabelText: String {
        classification
    }
    var item1: (label: String, value: String) {
        ("DESIGNATION", designation)
    }
    var item2: (label: String, value: String) {
        ("SKIN COLORS", skinColors)
    }
    var item3: (label: String, value: String) {
        ("HAIR COLORS", hairColors)
    }
    var item4: (label: String, value: String) {
        ("EYE COLORS", eyeColors)
    }
    var item5: (label: String, value: String) {
        ("LANGUAGE", language)
    }
}
