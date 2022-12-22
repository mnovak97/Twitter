//
//  AuthButtonView.swift
//  Twitter
//
//  Created by Martin Novak on 25.06.2022..
//

import SwiftUI

struct AuthButtonView: View {
    let text: String
    var body: some View {
        Button(action: {}) {
            Text(text)
                .padding()
                .frame(width: 350, height: 50)
                .foregroundColor(.white)
                .background(Color(.systemBlue))
                .clipShape(Capsule())
        }
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
    }
}

struct AuthButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AuthButtonView(text: "Sign in")
    }
}
