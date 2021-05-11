//
//  OutlineButton.swift
//  Fruits
//
//  Created by Vitor Hugo on 10/05/21.
//

import SwiftUI

struct OutlineButton: View {
    var body: some View {
        Button(action: {
            print("Outline Button")
        }, label: {
            HStack(spacing: 20) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.medium)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1, antialiased: true))
        }).accentColor(Color.white)
    }
}

struct OutlineButton_Previews: PreviewProvider {
    static var previews: some View {
        OutlineButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
