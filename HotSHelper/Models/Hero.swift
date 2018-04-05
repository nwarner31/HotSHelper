//
//  Hero.swift
//  HotSHelper
//
//  Created by Nathaniel Warner on 4/1/18.
//  Copyright © 2018 Nathaniel Warner. All rights reserved.
//

import Foundation

class Hero {
    let name: String
    let title: String
    let description: String
    let role: heroRole
    let universe: Universe
    let difficulty: heroDifficulty
    let iconImage: String
    let fullImage: String
    let heroDamage: Int
    let heroUtility: Int
    let heroSurvivability: Int
    let heroComplexity: Int
    
    init(name: String, title: String, description: String, role: heroRole, universe: Universe, difficulty: heroDifficulty, iconImage: String, fullImage: String, heroDamage: Int, heroUtility: Int, heroSurvivability: Int, heroComplexity: Int) {
        self.name = name
        self.title = title
        self.description = description
        self.role = role
        self.universe = universe
        self.difficulty = difficulty
        self.iconImage = iconImage
        self.fullImage = fullImage
        self.heroDamage = heroDamage
        self.heroUtility = heroUtility
        self.heroSurvivability = heroSurvivability
        self.heroComplexity = heroComplexity
    }
    
    enum heroRole : String {
        case warrior = "warrior"
        case assassin = "assassin"
        case support = "support"
        case specialist = "specialist"
    }
    enum heroDifficulty : String {
        case easy = "easy"
        case medium = "medium"
        case hard = "hard"
        case veryHard = "veryHard"
    }
}
