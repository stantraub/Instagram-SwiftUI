//
//  UserCell.swift
//  InstagramSwiftUITutorial
//
//  Created by Stanley Traub on 5/28/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                    
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
