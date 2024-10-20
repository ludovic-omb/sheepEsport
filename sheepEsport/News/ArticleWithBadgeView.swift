//
//  ArticleWithBadgeView.swift
//  sheepEsport
//
//  Created by Ludovic Omombo on 08/10/2024.
//


import SwiftUI

struct ArticleWithBadgeView: View {
    let image: Image
    let title: String
    let isNew: Bool
    let isUpdated: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Article contenu avec image et titre
            HStack(spacing: 10) {
                Image("\(article.image)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 60)
                        .cornerRadius(8)
                }
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                
                Spacer()
            }
            
            // Modal pour "New" ou "Updated"
            if isNew {
                Text("NEW")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.yellow)
                    .cornerRadius(5)
            } else if isUpdated {
                Text("UPDATED")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.red)
                    .cornerRadius(5)
            }
            

        }
        .padding()
        .background(Color.black) // Fond noir
        .cornerRadius(10)
    }

// Fonction pour déterminer si un article est nouveau ou mis à jour
func checkIfNew(article: Article) -> Bool {
    // Logique pour déterminer si l'article est nouveau (par exemple, publié dans les 7 derniers jours)
    let calendar = Calendar.current
    let now = Date()
    if let diff = calendar.dateComponents([.day], from: article.dateArticle, to: now).day {
        return diff < 7
    }
    return false
}

func checkIfUpdated(article: Article) -> Bool {
    // Logique pour déterminer si l'article a été mis à jour (ex. : un attribut spécifique pourrait être utilisé)
    // Pour l'exemple, on dira que les articles de la catégorie "Lol" sont des articles mis à jour
    return article.origin == .leak
}

// Prévisualisation de l'article
struct ArticleWithBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            // Exemple d'un article nouveau
            ArticleWithBadgeView(
                image: "Jojopyun",
                title: "Sources: Ice, nuc set to re-sign with Team BDS",
                isNew: true,
                isUpdated: false
            )
            
            // Exemple d'un article mis à jour
            ArticleWithBadgeView(
                image: "Yike",
                title: "Sources: TheRock set to join Karmine Corp Blue in LFL, as Head Coach",
                isNew: false,
                isUpdated: true
            )
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
