//
//  BigButton.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/22/25.
//

import SwiftUI

struct BigButton: View {
    let text: String
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack(alignment: .center, spacing: 11) {
                Text(text)
                Image(systemName: "arrow.forward")
            }
            .font(.normalTextBold)
            .foregroundStyle(Color.white)
            .frame(maxWidth: .infinity)
        }
        .padding(.vertical, 18)
        .background(Color.primary100)
        .cornerRadius(10)
    }
}

#Preview {
    BigButton(text: "Button") {}
}
