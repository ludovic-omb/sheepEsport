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
    let image : String
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
    case china
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
        case .china:
            return Image(systemName: "flag.china")
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
        image: "Yike",
        description: "In this interview, G2 Mikyx talks about the team's journey and their goals for the upcoming Worlds 2024.",
        dateArticle: Date(),
        category: .Lol,
        languages: [.france, .england],
        origin: .interview
    ),
    
    Article(
        title: "Team Liquid signs a new roster for Valorant Champions 2024",
        image: "Jojopyun",
        description: "Sources confirm that Team Liquid has signed a new roster to compete in Valorant Champions 2024.",
        dateArticle: Date(),
        category: .valorant,
        languages: [.england, .spain],
        origin: .source
    ),
]
