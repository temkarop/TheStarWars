//
//  Displayable.swift
//  TheStarWars
//
//  Created by Артем Ропавка on 16.08.2021.
//

protocol Displayable {
    var titleLabelText: String { get }
    var subtitleLabelText: String { get }
    var item1: (label: String, value: String) { get }
    var item2: (label: String, value: String) { get }
    var item3: (label: String, value: String) { get }
    var item4: (label: String, value: String) { get }
    var item5: (label: String, value: String) { get }
}
