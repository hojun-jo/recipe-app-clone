//
//  InputField.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/22/25.
//

import SwiftUI

struct InputField: View {
    @Binding var text: String
    @FocusState private var focused: Bool
    
    let label: String
    let placeholder: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(label)
                .font(.smallTextRegular)
            TextField(placeholder, text: $text)
                .padding(.horizontal, 20)
                .padding(.vertical, 19)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(focused ? Color.primary80 : Color.gray4, lineWidth: 1.5)
                )
                .font(.smallerTextRegular)
                .focused($focused)
        }
    }
}

#Preview {
    @Previewable @State var text = ""
    InputField(text: $text, label: "Label", placeholder: "Placeholder")
}
