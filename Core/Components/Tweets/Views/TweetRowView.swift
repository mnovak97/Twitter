//
//  TweetRowView.swift
//  Twitter
//
//  Created by Martin Novak on 12.06.2022..
//

import SwiftUI
import Kingfisher

struct TweetRowView: View {
    @ObservedObject var viewModel: TweetRowViewModel
    
    init(tweet: Tweet) {
        self.viewModel = TweetRowViewModel(tweet: tweet)
    }
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack(alignment: .top, spacing: 12){
                if let user = viewModel.tweet.user {
                    KFImage(URL(string:user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 54, height: 54)
                    VStack(alignment:.leading, spacing: 4) {
                        HStack(alignment:.top,spacing: 10) {
                            Text(user.fullname)
                                .font(.subheadline).bold()
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            Text("·")
                                .font(.caption).bold()
                                .foregroundColor(.gray)
                            Text("49w")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Text(viewModel.tweet.caption)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                }
            }//HSTACK
            .padding()
            HStack{
                Button(action: {}, label:{
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                })
                Spacer()
                Button(action: {}, label:{
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                })
                Spacer()
                Button(action: {
                    viewModel.tweet.didLike ?? false ?
                    viewModel.unlikeTweet() :
                    viewModel.likeTweet()
                }, label:{
                    Image(systemName: viewModel.tweet.didLike ?? false ? "heart.fill" : "heart")
                        .font(.subheadline)
                        .foregroundColor(viewModel.tweet.didLike ?? false ? .red : .gray)
                })
                Spacer()
                Button(action: {}, label:{
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                })
            }//HSTACK
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

