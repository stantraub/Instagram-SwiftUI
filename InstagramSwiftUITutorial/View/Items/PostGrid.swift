//
//  PostGrid.swift
//  InstagramSwiftUITutorial
//
//  Created by Stanley Traub on 5/27/21.
//

import SwiftUI

struct PostGrid: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0 ..< 10) { item in
                NavigationLink(
                    destination: FeedView(),
                    label: {
                        Image("batman")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()
                    })
            }
            
        })
    }
}

struct PostGrid_Previews: PreviewProvider {
    static var previews: some View {
        PostGrid()
    }
}
