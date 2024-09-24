import SwiftUI

struct ArticleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Image principale
            AsyncImage(url: URL(string: "https://www.sheepesports.com/_next/image?url=https%3A%2F%2Fcdn.sanity.io%2Fimages%2F9rqbl8zs%2Fproduction%2F63604dcb3ae7c5dc4f430e21d21b4ac5f84ad446-1920x1080.webp&w=1920&q=75")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .cornerRadius(10)
            } placeholder: {
                Color.gray
                    .frame(height: 200)
                    .cornerRadius(10)
            }

            // Badge en haut à gauche (LEAK)
            HStack {
                Text("LEAK")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.black)
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(5)

                Spacer()

                // Drapeau pour représenter l'anglais
                Image(systemName: "flag.fill")
                    .foregroundColor(.white)
            }
            .padding(.horizontal)

            // Date de l'article et heure
            HStack {
                Text("October 3, 2024, 4:49 PM")
                    .font(.caption)
                    .foregroundColor(.gray)

                Spacer()

                // Icône de langue (ici drapeau anglais)
                Image(systemName: "globe")
                    .foregroundColor(.white)
            }
            .padding(.horizontal)

            // Titre de l'article
            Text("FNC Razork: We've had some confidence issues, but I've been pushing us to be more proactive [...] I take a lot of responsibility")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding()
        }
        .background(Color.black) // Fond noir
        .cornerRadius(15)
        .padding()
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
