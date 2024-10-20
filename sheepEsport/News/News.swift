//
//  News.swift
//  sheepEsport
//
//  Created by Ludovic OMOMBO on 20/10/2024.
//
import SwiftUI

struct News: View {
var body: some View {
    NavigationStack {
        VStack(alignment: .leading, spacing: 10) {
            ScrollView {
                ForEach(articles) { article in
                    NavigationLink {
                        ArticleDetailView(article: article)
                    } label: {
                        ArticleView(articles: [Article])
                    }
                    .navigationTitle("News")
                    .padding(.horizontal)
                }
            }
        }
    }
    }
    
}

#Preview {
    News()
}
