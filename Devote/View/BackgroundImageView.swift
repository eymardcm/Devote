//
//  BackgroundImageView.swift
//  Devote
//
//  Created by Chad Eymard on 3/16/24.
//

import SwiftUI

struct BackgroundImageView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

// MARK: - PREVIEW
struct BackgroundImageView_Preview: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
