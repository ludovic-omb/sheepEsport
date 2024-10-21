//
//  loadingPage.swift
//  sheepEsport
//
//  Created by Ludovic OMOMBO on 20/10/2024.
//

import SwiftUI

struct loadingPage: View {
    @State private var isBlinking = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.black, .black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            Image("logo+sheepesport")
                .opacity(isBlinking ? 0.2 : 1) // Change l'opacité pour l'effet de clignotement
                .scaleEffect(isBlinking ? 1.05 : 1.0) // Optionnel : un effet d'agrandissement léger)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                        isBlinking.toggle()
                    }
                }
        }
    }
}

#Preview {
    loadingPage()
}
