//
//  MediumButton.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/22/25.
//

import SwiftUI

struct MediumButton: View {
    let text: String
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack(alignment: .center, spacing: 9) {
                Text(text)
                Image(systemName: "arrow.forward")
            }
            .font(.normalTextBold)
            .foregroundStyle(Color.white)
            .frame(width: 243)
        }
        .padding(.vertical, 18)
        .background(Color.primary100)
        .cornerRadius(10)
    }
}

#Preview {
    MediumButton(text: "Button") {
        
    }
}
