//
//  SmallArticleView.swift
//  sheepEsport
//
//  Created by Ludovic Omombo on 05/10/2024.
//


import SwiftUI

struct SmallArticleView: View {
    let imageUrl: URL
    let title: String
    
    var body: some View {
        HStack(spacing: 10) {
            // Image à gauche
            AsyncImage(url: imageUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 60)
                    .cornerRadius(8)
            } placeholder: {
                Color.gray
                    .frame(width: 100, height: 60)
                    .cornerRadius(8)
            }
            
            // Titre à droite
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding()
        .background(Color.black) // Fond noir
        .cornerRadius(10)
    }
}

// Prévisualisation de l'article
struct SmallArticleView_Previews: PreviewProvider {
    static var previews: some View {
        SmallArticleView(
            imageUrl: URL(string: "https://cdn.sanity.io/images/9rqbl8zs/production/2e020f88bf90016efa6e45b20f0051abf1685470-1920x1080.jpg")!,
            title: "Sources: Bean set to join BIG in the Prime League"
        )
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
