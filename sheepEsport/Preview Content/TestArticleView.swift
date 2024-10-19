//
//  TestArticleView.swift
//  sheepEsport
//
//  Created by Ludovic OMOMBO on 17/10/2024.
//

import SwiftUI

struct WorldsCardView: View {
    var articles: [Article]

    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                // Drapeau
                Text("Lol")
                    .font(.system(size: 14, weight: .bold))
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(5)
                Spacer()
                Image(systemName: "flag.circle.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Spacer()
            // Date de l'article
            Text("17/10/2024")
                .font(.caption)
                .foregroundColor(.white.opacity(0.7))
            
            //Titre de l'article
            Text("Support Labrov 🇬🇷 is set to join G2 Esports in the #LEC ")
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
            
            Divider()
                .background(Color.white)
            //Description de l'article
            Text("On decrit quelque chose de facile pour cet article")
                .font(.body)
                .foregroundColor(.white)
        }
        .padding()
        // background de l'article
        .background(
            AsyncImage(url: URL(string:"https://pbs.twimg.com/card_img/1846645762236542976/RCAakLTF?format=jpg&name=medium"))
                .scaledToFill()
        )
        .cornerRadius(15)
        .frame(width: 350, height: 450)
        .shadow(radius: 10)
            }
}



struct ContentViewArticle: View {
    var body: some View {
        let exampleArticle = Article(title: "Panaris négligé",
                                     imageUrl: URL(string: "https://pbs.twimg.com/media/GaGMUCsXcAEvD-M?format=jpg&name=large")!,
                                     description: "On decrit quelque chose de facile pour cet article",
                                     dateArticle: Date(),
                                     category: .Lol,
                                     languages: [.france],
                                      origin: .interview
                                     )
        WorldsCardView(articles: [exampleArticle])
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewArticle()
    }
}

