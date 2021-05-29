//
//  FeedView.swift
//  InstagramSwiftUITutorial
//
//  Created by Stanley Traub on 5/27/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                ForEach(0 ..< 20) { _ in
                    FeedCell()
                }
            }.padding(.top)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
