//
//  TweetFilterViewModel.swift
//  Twitter
//
//  Created by Martin Novak on 12.06.2022..
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case.tweets: return "Tweets"
        case.replies: return "Replies"
        case.likes: return "Likes"
        }
    }
}
