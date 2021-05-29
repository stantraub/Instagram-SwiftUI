//
//  SearchView.swift
//  InstagramSwiftUITutorial
//
//  Created by Stanley Traub on 5/27/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var inSearchMode = false
    
    var body: some View {
        ScrollView {
            
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            ZStack {
                if inSearchMode {
                    UserListView()
                } else {
                    PostGrid()
                }
            }
            
            UserListView()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
