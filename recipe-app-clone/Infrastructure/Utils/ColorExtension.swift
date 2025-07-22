//
//  AppColors.swift
//  recipe-app-clone
//
//  Created by 조호준 on 7/22/25.
//

import SwiftUI

extension Color {
    // Netural Color
    static let black = Color(hex: "#000000")
    static let gray1 = Color(hex: "#484848")
    static let gray2 = Color(hex: "#797979")
    static let gray3 = Color(hex: "#A9A9A9")
    static let gray4 = Color(hex: "#D9D9D9")
    static let white = Color(hex: "#FFFFFF")
    
    // Primary
    static let primary100 = Color(hex: "#129575")
    static let primary80 = Color(hex: "#71B1A1")
    static let primary60 = Color(hex: "#AFD3CA")
    static let primary40 = Color(hex: "#DBEBE7")
    static let primary20 = Color(hex: "#F6FAF9")
    
    // Secondary
    static let secondary100 = Color(hex: "#FF9C00")
    static let secondary80 = Color(hex: "#FFA61A")
    static let secondary60 = Color(hex: "#FFBA4D")
    static let secondary40 = Color(hex: "#FFCE80")
    static let secondary20 = Color(hex: "#FFE1B3")
    
    // Rating
    static let rating = Color(hex: "#FFAD30")
    
    // Warning
    static let warning = Color(hex: "#FD3654")
    static let warningLight = Color(hex: "#FFE1E7")
    
    // Green
    static let success = Color(hex: "#31B057")
}

extension Color {
    init(hex: String) {
      let scanner = Scanner(string: hex)
      _ = scanner.scanString("#")
      
      var rgb: UInt64 = 0
      scanner.scanHexInt64(&rgb)
      
      let r = Double((rgb >> 16) & 0xFF) / 255.0
      let g = Double((rgb >>  8) & 0xFF) / 255.0
      let b = Double((rgb >>  0) & 0xFF) / 255.0
      self.init(red: r, green: g, blue: b)
    }
}
