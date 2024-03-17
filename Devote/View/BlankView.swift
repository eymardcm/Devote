//
//  BlankView.swift
//  Devote
//
//  Created by Chad Eymard on 3/16/24.
//

import SwiftUI

struct BlankView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            
        } //: VSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW
struct BlankView_Preview: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
