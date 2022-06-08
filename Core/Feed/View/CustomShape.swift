//
//  CustomShape.swift
//  Twitter
//
//  Created by Martin Novak on 06.06.2022..
//

import SwiftUI

struct CustomShape: Shape {
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        
        return Path(path.cgPath)
    }
}
