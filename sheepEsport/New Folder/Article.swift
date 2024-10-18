//
//  Article.swift
//  sheepEsport
//
//  Created by Ludovic Omombo on 01/10/2024.
//
import Foundation
import SwiftUI

struct Article: Identifiable {
    let id = UUID()
    let title: String
    let imageUrl : URL
    let description: String
    let dateArticle: Date
    let category: Category
    let languages : [Flag]
    let origin: Origin
}

enum Origin: String {
    case source = "Source"
    case interview = "Interview"
    case leak = "Leak"
    case official = "Official"
}

enum Flag {
    case france
    case england
    case japan
    case spain
    case southKorea
    var image : Image {
        switch self {

        case .france:
            return Image(systemName: "flag.france")
        case .england:
            return Image(systemName: "flag.england")
        case .japan:
            return Image(systemName: "flag.japan")
        case .spain:
            return Image(systemName: "flag.spain")
        case .southKorea:
            return Image(systemName: "flag.southkorea")
        }
    }
}

enum Category: String {
    case Lol = "Lol"
    case valorant = "Valorant"
    case cs2 = "Cs2"
}

let articles = [
    Article(
        title: "G2 Mikyx: 'We'll keep pushing and working hard to win Worlds 2024'",
        imageUrl: URL(string: "https://example.com/g2_mikyx.jpg")!,
        description: "In this interview, G2 Mikyx talks about the team's journey and their goals for the upcoming Worlds 2024.",
        dateArticle: Date(),
        category: .Lol,
        languages: [.france, .england],
        origin: .interview
    ),
    
    Article(
        title: "Team Liquid signs a new roster for Valorant Champions 2024",
        imageUrl: URL(string: "https://example.com/team_liquid_valorant.jpg")!,
        description: "Sources confirm that Team Liquid has signed a new roster to compete in Valorant Champions 2024.",
        dateArticle: Date(),
        category: .valorant,
        languages: [.england, .spain],
        origin: .source
    ),
    
    Article(
        title: "LEAK: New CS2 map to be revealed at PGL Major 2024",
        imageUrl: URL(string: "https://example.com/cs2_leak.jpg")!,
        description: "A leaked report suggests that a new map for Counter-Strike 2 will be unveiled at the PGL Major 2024.",
        dateArticle: Date(),
        category: .cs2,
        languages: [.france, .japan],
        origin: .leak
    ),
    
    Article(
        title: "Fnatic Upsets G2 in LEC Finals 2024",
        imageUrl: URL(string: "https://example.com/fnatic_g2.jpg")!,
        description: "In an epic LEC Finals, Fnatic takes down G2 in a five-game thriller.",
        dateArticle: Date(),
        category: .Lol,
        languages: [.england],
        origin: .official
    ),

    Article(
        title: "Riot Announces Valorant 2024 Expansion Teams",
        imageUrl: URL(string: "https://example.com/valorant_expansion.jpg")!,
        description: "Riot Games has confirmed new teams joining the Valorant Champions Tour in 2024.",
        dateArticle: Date(),
        category: .valorant,
        languages: [.spain, .southKorea],
        origin: .source
    ),

    Article(
        title: "Exclusive Interview with CS2 Developer on Future Updates",
        imageUrl: URL(string: "https://example.com/cs2_interview.jpg")!,
        description: "A deep dive into future updates coming to Counter-Strike 2 with one of the lead developers.",
        dateArticle: Date(),
        category: .cs2,
        languages: [.england, .japan],
        origin: .interview
    ),

    Article(
        title: "MAD Lions Set New Record in LEC 2024",
        imageUrl: URL(string: "https://example.com/mad_lions_record.jpg")!,
        description: "MAD Lions set a new record in the LEC with the most consecutive wins in 2024.",
        dateArticle: Date(),
        category: .Lol,
        languages: [.france, .spain],
        origin: .official
    ),

    Article(
        title: "Valorant Patch 5.12 Introduces Major Agent Changes",
        imageUrl: URL(string: "https://example.com/valorant_patch_5.12.jpg")!,
        description: "The latest patch for Valorant brings significant changes to many agents in the game.",
        dateArticle: Date(),
        category: .valorant,
        languages: [.southKorea, .england],
        origin: .leak
    ),

    Article(
        title: "LEAK: New CS2 Weapon Skins Coming in 2024",
        imageUrl: URL(string: "https://example.com/cs2_weapon_skins.jpg")!,
        description: "Dataminers have found evidence of new weapon skins set to release in CS2 in 2024.",
        dateArticle: Date(),
        category: .cs2,
        languages: [.france, .japan],
        origin: .leak
    ),

    Article(
        title: "Faker to Lead T1 at Worlds 2024",
        imageUrl: URL(string: "https://example.com/faker_t1_worlds.jpg")!,
        description: "Legendary player Faker is set to lead T1 in their quest for another Worlds Championship.",
        dateArticle: Date(),
        category: .Lol,
        languages: [.southKorea, .france],
        origin: .official
    ),

    Article(
        title: "Valorant World Championship 2024: What to Expect",
        imageUrl: URL(string: "https://example.com/valorant_worlds.jpg")!,
        description: "The Valorant World Championship is around the corner. Here's what we can expect in 2024.",
        dateArticle: Date(),
        category: .valorant,
        languages: [.england],
        origin: .source
    ),
]
