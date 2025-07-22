//
//  FilterButton.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/22/25.
//

import SwiftUI

struct FilterButton: View {
    let text: String
    let isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            Text(text)
                .font(.smallerTextRegular)
                .foregroundStyle(isSelected ? Color.white : Color.primary80)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? Color.primary100 : Color.primary80, lineWidth: 1)
                .background(isSelected ? Color.primary100 : Color.white)
        )
        .cornerRadius(10)
    }
}

#Preview {
    FilterButton(text: "Text", isSelected: false, onTap: {})
    FilterButton(text: "asdffff", isSelected: true, onTap: {})
}
