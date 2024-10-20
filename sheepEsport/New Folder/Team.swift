//
//  Team.swift
//  sheepEsport
//
//  Created by Ludovic OMOMBO on 18/10/2024.
//

import Foundation

struct TeamResponse: Codable {
    let id: String
    let name: String
    let teamLogo: TeamLogo
    let teams: [Team]
    let league: String
    let tagName: TagName
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case teamLogo
        case teams
        case league
        case tagName
    }
}

struct TeamLogo: Codable {
    let asset: Asset
}

struct Asset: Codable {
    let url: String
}

struct Team: Codable {
    let displayed: Bool
    let teamName: String
    let year: Int
    let split: String
    let players: [Player]
}

struct Player: Codable {
    let id: String
    let playerName: String
    let role: String
    let articleUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case playerName
        case role
        case articleUrl
    }
}

struct TagName: Codable {
    let title: String
    let articlesCount: Int
}

func decodeTeamResponse(from jsonData: Data) -> [TeamResponse]? {
    let decoder = JSONDecoder()
    
    do {
        let teamResponse = try decoder.decode([TeamResponse].self, from: jsonData)
        return teamResponse
    } catch {
        print("Error decoding JSON: \(error)")
        return nil
    }
}

let url = URL(string: "https://9rqbl8zs.api.sanity.io/v2023-05-17/data/query/production?query=*%5B_type+%3D%3D+%22team%22%5D")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data {
        if let teams = decodeTeamResponse(from: data) {
            print(teams) // Utilise les données ici
        }
    }
}
