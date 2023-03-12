//
//  SideMenuView.swift
//  Twitter
//
//  Created by Martin Novak on 16.06.2022..
//

import SwiftUI
import Kingfisher

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        if let user = authViewModel.currentUser {
            VStack(alignment: .leading, spacing: 30) {
                VStack (alignment: .leading){
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .frame(width: 48, height: 48)
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 48, height: 48)
                  
                    VStack(alignment: .leading, spacing: 4){
                        Text(user.fullname)
                            .font(.headline)
                            .fontWeight(.bold)
                        Text("@\(user.username)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    UserStatsView()
                }
                .padding(.leading)
                
                ForEach(SideMenuViewModel.allCases, id:\.rawValue) { item in
                    if(item == .profile) {
                        NavigationLink {
                            ProfileView(user: user)
                        } label: {
                            SideMenuRowView(item: item)
                        }
                    } else if item == .logout {
                        Button {
                            authViewModel.signOut()
                        } label: {
                            SideMenuRowView(item: item)
                        }

                    } else {
                        SideMenuRowView(item: item)
                    }
                }
                Spacer()
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

