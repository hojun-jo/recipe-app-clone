//
//  RatingButton.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/22/25.
//

import SwiftUI

struct RatingButton: View {
    let rate: Int
    let isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack(alignment: .center, spacing: 5) {
                Text("\(rate)")
                    .font(.smallerTextRegular)
                Image(systemName: "star.fill")
                    .frame(width: 18, height: 18)
            }
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
    RatingButton(rate: 5, isSelected: false) {
        
    }
    
    RatingButton(rate: 5, isSelected: true) {
        
    }
}
