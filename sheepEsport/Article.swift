//
//  Article.swift
//  sheepEsport
//
//  Created by Ludovic Omombo on 01/10/2024.
//
import Foundation

struct Article {
    let title: String
    let imageUrl : URL
    let description: String
    let dateArticle: Date
    let category: Category
    let language : [Flag]
    let origin: Origin
}

enum Origin {
    case source
    case interview
    case leak
    case official
}

enum Flag {
    case france
    case england
    case japan
    case spain
    case southKorea
}

enum Category {
    case Lol
    case valorant
    case cs2
}

let Article1 = Article(
    title: "Transfers",
    imageUrl: URL(string: "www.gfzgyighfzh.com")!,
    description: "Test",
    dateArticle: .now,
    category: .Lol,
    language: [.france, .england],
    origin: .leak
)

let Article2 = Article(
    title: "Comparaison",
    imageUrl: URL(string: "www.gfzgyifgghfzh.com")!,
    description: "Tests",
    dateArticle: .now,
    category: .Lol,
    language: [.france],
    origin: .interview
)

let articles: [Article] = [Article1, Article2]
