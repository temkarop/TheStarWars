//
//  FilmDetail.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

struct FilmDetails: Decodable {
    
    let id: Int
    let title: String
    let openingCrawl: String
    let director: String
    let producer: String
    let releaseDate: String
  
  enum CodingKeys: String, CodingKey {
    case id = "episode_id"
    case title
    case openingCrawl = "opening_crawl"
    case director
    case producer
    case releaseDate = "release_date"
  }
}

extension FilmDetails: Displayable {
    var titleLabelText: String {
        title
    }
    var subtitleLabelText: String {
        "Episode \(String(id))"
    }
    var item1: (label: String, value: String) {
        ("DIRECTOR", director)
    }
    var item2: (label: String, value: String) {
        ("PRODUCER", producer)
    }
    var item3: (label: String, value: String) {
        ("RELEASE DATE", releaseDate)
    }
    var item4: (label: String, value: String) {
        ("OPENING CRAWL", openingCrawl)
    }
    var item5: (label: String, value: String) {
        ("", "")
    }
}

