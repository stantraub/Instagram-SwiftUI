//
//  ProfileHeaderView.swift
//  InstagramSwiftUITutorial
//
//  Created by Stanley Traub on 5/28/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
            }
            
            Spacer()
            
            
            HStack(spacing: 24) {
                UserStatView()
                UserStatView()
                UserStatView()
            }.padding(.trailing, 32)
            

        }
    }
}

struct UserStatView: View {
    var body: some View {
        VStack {
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            
            Text("Followers")
                .font(.system(size: 15))
        }.frame(width: 80, alignment: .center)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
