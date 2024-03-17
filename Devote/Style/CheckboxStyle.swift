//
//  CheckboxStyle.swift
//  Devote
//
//  Created by Chad Eymard on 3/17/24.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    feedback.notificationOccurred(.success)
                    if configuration.isOn {
                        playSound(sound: "sound-rise", type: "mp3")
                    } else {
                        playSound(sound: "sound-tap", type: "mp3")
                    }
                    configuration.isOn.toggle()
                }
            
            configuration.label
        } //: HSTACK
    }
}

// MARK: - PREVIEW
struct CheckboxStyle_Preview: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder label", isOn: .constant(true))
            .toggleStyle(CheckboxStyle())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
