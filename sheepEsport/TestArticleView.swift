//
//  TestArticleView.swift
//  sheepEsport
//
//  Created by Ludovic OMOMBO on 17/10/2024.
//

import SwiftUI

struct WorldsCardView: View {
    var articles: [Article]
    @State var selectedArticle: Article?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(article.category)
                    .font(.system(size: 14, weight: .bold))
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(5)
                Spacer()
                Image(systemName: "flag.circle.fill") // Remplace par l'icône de ton choix
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            Spacer()
            
            Text(article.dateArticle)
                .font(.caption)
                .foregroundColor(.white.opacity(0.7))
            
            Text(article.title)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
            
            Divider()
                .background(Color.white)
            
            Text(article.description)
                .font(.body)
                .foregroundColor(.white)
        }
        .padding()
        .background(
            AsyncImage(url:article.imageUrl)
                .resizable()
                .scaledToFill()
        )
        .cornerRadius(15)
        .frame(width: 350, height: 450)
        .shadow(radius: 10)
    }
}

struct ContentViewArticle: View {
    var body: some View {
        WorldsCardView(articles: [])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewArticle()
    }
}

