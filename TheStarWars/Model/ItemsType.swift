//
//  ItemType.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

import Foundation

enum ItemsType {
    
    case allFilms
    case allCharacters
    case allPlanets
    case allSpecies
    case allStarships
    case allVehicles
    
    var baseURL: String {
        switch self {
        case .allFilms:
            return "https://swapi.dev/api/films/"
        case .allCharacters:
            return "https://swapi.dev/api/people/"
        case .allPlanets:
            return "https://swapi.dev/api/planets/"
        case .allSpecies:
            return "https://swapi.dev/api/species/"
        case .allStarships:
            return "https://swapi.dev/api/starships/"
        case .allVehicles:
            return "https://swapi.dev/api/vehicles/"
        }
    }
    
    var request: URLRequest {
        guard let url = URL(string: baseURL) else {
            fatalError("URL was not created")
        }
        return URLRequest(url: url)
    }
}

