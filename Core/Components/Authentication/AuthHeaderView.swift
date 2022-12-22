//
//  AuthenticationHeader.swift
//  Twitter
//
//  Created by Martin Novak on 25.06.2022..
//

import SwiftUI

struct AuthHeaderView: View {
    let titleFirst: String
    let titleSecond: String
    
    var body: some View {
        VStack(alignment: .leading,content:{
            HStack{Spacer()}
            Text(titleFirst)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(titleSecond)
                .font(.largeTitle)
                .fontWeight(.semibold)
        })//VSTACK
            .frame(height:260)
            .padding(.leading)
            .foregroundColor(.white)
            .background(Color(.systemBlue))
            .clipShape(CustomShape(corners: [.bottomRight]))
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(titleFirst: "Hello.", titleSecond: "Welcome Back")
    }
}
