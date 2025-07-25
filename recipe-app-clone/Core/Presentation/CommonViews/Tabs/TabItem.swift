//
//  TabItem.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/23/25.
//

import SwiftUI

struct TabItem: View {
    let label: String
    let isSelected: Bool
    let onSelect: () -> Void
    
    var body: some View {
        Text(label)
            .padding(.vertical, 8)
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .foregroundStyle(isSelected ? Color.white : Color.primary80)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? Color.primary100 : Color.white, lineWidth: 1)
                    .background(isSelected ? Color.primary100 : Color.white)
            )
            .cornerRadius(10)
            .onTapGesture {
                onSelect()
            }
    }
}

#Preview {
    TabItem(label: "Label", isSelected: true) {  }
    TabItem(label: "Label", isSelected: false) {  }
}
