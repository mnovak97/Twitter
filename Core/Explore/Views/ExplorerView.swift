//
//  ExplorerView.swift
//  Twitter
//
//  Created by Martin Novak on 12.06.2022..
//

import SwiftUI

struct ExplorerView: View {
    @ObservedObject var viewModel = ExplorerViewModel()
    var body: some View {
        VStack {
            SearchBar(text: $viewModel.searchText)
                .padding()
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.searchableUsers) { user in
                        NavigationLink {
                            ProfileView(user: user)
                        } label: {
                            UserRowView(user:user)
                        }

                    }
                }
            }
        }
        .navigationTitle("Search")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExplorerView_Previews: PreviewProvider {
    static var previews: some View {
        ExplorerView()
    }
}
