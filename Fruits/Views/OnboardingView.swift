//
//  Onboarding.swift
//  Fruits
//
//  Created by Vitor Hugo on 10/05/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        let yExtension: CGFloat = 50
                GeometryReader { g in
                    TabView {
                        ForEach(0 ..< 5) { item in
                            OnboardDesign()
                        }
                    }
                    .frame(width: g.size.width, height: g.size.height + yExtension)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .font(Font.title.bold())
                }
                .offset(y: -yExtension)
                .edgesIgnoringSafeArea(.all)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

