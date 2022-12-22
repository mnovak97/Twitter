//
//  UploadTweetViewModel.swift
//  Twitter
//
//  Created by Martin Novak on 30.08.2022..
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCapton caption: String) {
        service.uploadTweet(caption: caption) { sucess in
            if sucess {
                self.didUploadTweet = true
            } else {
                
            }
        }
    }
}
