import SwiftUI

struct ArticleView: View {
   var article: [Article]
    
    var body: some View {
        // Image principale de l'article
        Image {
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 200)
            .cornerRadius(20)
        }
        // Badge en haut à gauche (origine de l'article)
        HStack {
            // Titre de l'article
            Text(article.title.rawValue)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.leading)
            Spacer()
            Text(self.article.origin.rawValue)
                .font(.caption)
                .bold()
                .foregroundColor(.white)
                .padding(5)
                .background(Color.pink)
                .cornerRadius(20)
            // Drapeau représentant la langue
            Image(systemName: "globe")
                .foregroundColor(.black)
        }
    }
    
    struct ArticleView_Previews: PreviewProvider {
        static var previews: some View {
            ArticleView(article: [
                Article(
                    title: "LEAK: New CS2 map to be revealed at PGL Major 2024",
                    image: Image("Yike"),
                    description: "A leaked report suggests that a new map for Counter-Strike 2 will be unveiled at the PGL Major 2024.",
                    dateArticle: Date(),
                    category: .cs2,
                    languages: [.france, .japan],
                    origin: .leak
                )
            ])
            .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}

