//
//  UserListView.swift
//  InstagramSwiftUITutorial
//
//  Created by Stanley Traub on 5/28/21.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20) {
                ForEach(0 ..< 20) { _ in
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                            UserCell()
                                .padding(.leading)
                        })
                }
            }
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
