//
//  TwoTabs.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/23/25.
//

import SwiftUI

struct TwoTabs: View {
    let firstLabel: String
    let secondLabel: String
    let selectedIndex: Int
    let onSelect: (Int) -> Void
    
    var body: some View {
        HStack(spacing: 15) {
            TabItem(label: firstLabel, isSelected: selectedIndex == 0) {
                onSelect(0)
            }
            TabItem(label: secondLabel, isSelected: selectedIndex == 1) {
                onSelect(1)
            }
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TwoTabs(firstLabel: "Label", secondLabel: "Label", selectedIndex: 0, onSelect: {(index) in })
    TwoTabs(firstLabel: "Label", secondLabel: "Label", selectedIndex: 1, onSelect: {(index) in })
}
