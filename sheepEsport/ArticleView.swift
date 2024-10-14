import SwiftUI

struct ArticleView: View {
    var articles: [Article]
    
    var body: some View {
        ZStack {
            Color(.pink)
                .ignoresSafeArea()
            NavigationStack {
                VStack(alignment: .leading, spacing: 10) {
                    ScrollView {
                        ForEach(articles) { article in
                            // Date de l'article et heure
                            NavigationLink {
                                ArticleDetailView(article: article)
                            } label: {
                                // Image principale
                                AsyncImage(url: article.imageUrl) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 200)
                                        .cornerRadius(20)
                                } placeholder: {
                                    Color.gray
                                        .frame(height: 200)
                                        .cornerRadius(20)
                                    Spacer()
                                }
                            }
                            // Badge en haut à gauche (origine de l'article)
                            HStack {
                                // Titre de l'article
                                Text(article.title)
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                Spacer()
                                Text(article.origin.rawValue)
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
                            .navigationTitle("News")
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}
        
        struct ArticleView_Previews: PreviewProvider {
            static var previews: some View {
                ArticleView(articles: [
                    Article(
                        title: "G2 Mikyx: 'We'll keep pushing and working hard to win Worlds 2024'",
                        imageUrl: URL(string: "https://www.sheepesports.com/_next/image?url=https%3A%2F%2Fcdn.sanity.io%2Fimages%2F9rqbl8zs%2Fproduction%2F1b1f97b6b9e416d8a60b72c2b51495e02e16a5dc-1920x1080.webp&w=3840&q=75")!,
                        description: """
                        Carrying the dreams of the Asia-Pacific region, PSG Talon marches onward at the League of Legends 2024 World Championship toward a certain death against the titans of the LPL, Bilibili Gaming. Despite these expectations, the team remains undeterred and hopes to complete the task they began at MSI 2024, where they took BLG to five games and nearly claimed victory. In a short interview with Azhi, the team's top laner, Sheep Esports discusses the team's loss against FlyQuest, the current meta, and the evolution of minor regions in the current ecosystem.You had a strong early game but couldn't close out your match against FlyQuest. How do you feel about the game, and what do you think went wrong? Huang 'Azhi' Shang-Jhih: 'I believe we had good champions for the mid-game, but we didn’t control our tempo well. We did not force enough good team fights, and that’s why things ended up like this. After today's loss, we'll go back and review the games. We'll focus on how to improve and prepare to play the next match better. Our performance today wasn't that good. I'm not happy with how I played. As a top laner, how do you feel about lane swaps? As you were on the losing side today, did it feel frustrating not being able to lane? Azhi: Overall, lane swaps aren’t that bad, they make the game more diverse. But as a top laner, there is definitely some difficulty in adapting to those strategies. Being able to play weak side and endure the swaps is a very important thing to master to win games at this level..
                        """,
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
                    )
                ])
                .previewLayout(.sizeThatFits)
                .padding()
            }
        }

