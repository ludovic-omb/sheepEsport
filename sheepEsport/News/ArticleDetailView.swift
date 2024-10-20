//
//  ArticleDetailView.swift
//  sheepEsport
//
//  Created by Ludovic Omombo on 08/10/2024.
//
import SwiftUI

// Vue de l'article
struct ArticleDetailView: View {
    let article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Affiche l'image principale de l'article
                image (articles){ article in
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                    
                    // Titre de l'article
                    Text(article.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    // Métadonnées de l'article (auteur, date)
                    HStack {
                        Text("Ludovic OMOMBO")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text(timeSince(article.dateArticle))
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                    // Description de l'article
                    Text(article.description)
                        .font(.body)
                        .foregroundColor(.primary)
                        .lineSpacing(4)
                    
                    // Ajout de quelques métadonnées ou catégories
                    Text(article.origin.rawValue)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                    
                    Text(article.category.rawValue)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    // Prévisualisation
    struct ArticleDetailView_Previews: PreviewProvider {
        static var previews: some View {
            let sampleArticle = Article(
                title: "Sources - VALORANT: Derke (Fnatic) set to join Vitality",
                image: Image("Yike"),
                description: """
            Nikita Derke Sirmitev will join Vitality in VCT EMEA next year, according to Sheep Esports sources. Pending final signatures and documentation, Fnatic and Vitality reached a verbal agreement on Derke's buyout earlier today, allowing the player to move from one star-studded roster to another 
            
            Derke, Fnatic's duelist extraordinaire and one of the most decorated players in Europe, drew immense interest on the buyout market. NRG, Derke's initial preference, was among the teams vying for his contract — and the American team came quite close to reaching an agreement with Fnatic. However, Derke changed his mind on Vitality's project and the two organizations managed to reach a mutually acceptable buyout agreement.
            
            Despite qualifying for Champions, Vitality was unable to advance past the group stage — a brutal disappointment after the team's second-place domestic finish. VIT has moved quickly to rebuild in the offseason, already having signed Felipe Less Basso from LOUD to its roster and Daniel Faded Hwang from TSM as its new Head Coach. The organization also plans to retain Saif Sayf Jibraeel for the 2025 season.
            """,
                dateArticle: .now,
                category: .valorant,
                languages: [.france],
                origin: .official
            )
            
            ArticleDetailView(article: sampleArticle)
        }
    }
    
    // Fonction pour afficher le temps écoulé depuis la date
    func timeSince(_ date: Date) -> String {
        let formatter = RelativeDateTimeFormatter()
        return formatter.localizedString(for: date, relativeTo: Date())
    }
}
