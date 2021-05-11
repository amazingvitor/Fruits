//
//  OnboardDesign.swift
//  Fruits
//
//  Created by Vitor Hugo on 10/05/21.
//

import SwiftUI

struct OnboardDesign: View {
    @State var isAnimating: Bool = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.4), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.5)
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.4), radius: 2, x: 2, y: 2)
                Text("Blueberries are sweet, nutricious and wildly popular fruit all over the world")
                    .foregroundColor(.white)
                    .font(.headline)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.4), radius: 2, x: 2, y: 2)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 480)
                
                OutlineButton()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardDesign_Previews: PreviewProvider {
    static var previews: some View {
        OnboardDesign()
    }
}
