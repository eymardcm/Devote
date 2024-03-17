//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Chad Eymard on 3/16/24.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
