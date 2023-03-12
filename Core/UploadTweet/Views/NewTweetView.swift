//
//  NewTweetView.swift
//  Twitter
//
//  Created by Martin Novak on 16.06.2022..
//

import SwiftUI
import Kingfisher

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var authViewModel: AuthViewModel
    @ObservedObject var viewModel = UploadTweetViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancle")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                
                Button {
                    viewModel.uploadTweet(withCapton: caption)
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.vertical, 8)
                        .padding(.horizontal)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        
                }

            }
            .padding()
            HStack(alignment:.top) {
                if let user = authViewModel.currentUser {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 64, height: 64)
                }
                TextArea("What's happening? ", text: $caption)
            }
            .padding()
        }
        .onReceive(viewModel.$didUploadTweet) { success in
            if success {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
