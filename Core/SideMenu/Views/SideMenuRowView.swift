//
//  SideMenuRowView.swift
//  Twitter
//
//  Created by Martin Novak on 16.06.2022..
//

import SwiftUI

struct SideMenuRowView: View {
    var item: SideMenuViewModel
    var body: some View {
        HStack(spacing:16) {
            Image(systemName: item.imageName)
                .font(.headline)
                .foregroundColor(.gray)
                .frame(width: 25, height: 25)
            
            Text(item.description)
                .foregroundColor(.black)
                .font(.subheadline)
            Spacer()
        }
        .frame(height:40)
        .padding(.horizontal)
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowView(item: .profile)
    }
}
