//
//  CircularLayoutModifier.swift
//  ShadesBusiness
//
//  Created by 郭宇轩 on 10/31/22.
//

import SwiftUI

struct CircularLayoutModifier: ViewModifier{
    
    var d : CGFloat
    var degree : Double
    
    func body(content: Content) -> some View {
        content
//            .offset(x: self.radius + cos(degree * .pi / 180) * self.radius,
//                      y: self.radius - sin(degree * .pi / 180) * self.radius)
            .offset(x: cos(degree * .pi / 180) * self.d / 2,
                      y: 0 - sin(degree * .pi / 180) * self.d / 2)
            
    }
    
}
