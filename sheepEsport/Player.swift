//
//  Player.swift
//  sheepEsport
//
//  Created by Ludovic OMOMBO on 17/10/2024.
//


import SwiftUI

struct Player: Identifiable {
    let id = UUID()
    let icon: String
    let name: String
    let link: String
}

struct TeamView: View {
    let players = [
        Player(icon: "square.fill", name: "Oscarinin", link: "Oscarinin"),
        Player(icon: "leaf.fill", name: "Razork", link: "Razork"),
        Player(icon: "rectangle.and.pencil.and.ellipsis", name: "Humanoid", link: "Humanoid"),
        Player(icon: "square.fill", name: "Noah", link: "Noah"),
        Player(icon: "antenna.radiowaves.left.and.right", name: "Jun", link: "Jun")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("FNATIC")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            ForEach(players) { player in
                HStack {
                    Image(systemName: player.icon)
                        .foregroundColor(.gray)
                    Text(player.name)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "arrow.right")
                        .foregroundColor(.white)
                    Text(player.link)
                        .foregroundColor(.white)
                        .underline()
                }
            }
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct ContentView: View {
    var body: some View {
        TeamView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}