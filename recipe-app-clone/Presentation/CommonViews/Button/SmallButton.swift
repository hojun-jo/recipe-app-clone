//
//  SmallButton.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/22/25.
//

import SwiftUI

struct SmallButton: View {
    let text: String
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack(alignment: .center) {
                Text(text)
            }
            .font(.smallerTextBold)
            .foregroundStyle(Color.white)
            .frame(width: 114)
        }
        .padding(.vertical, 10)
        .background(Color.primary100)
        .cornerRadius(10)
    }
}

#Preview {
    SmallButton(text: "Button", onTap:  {
    })
}
