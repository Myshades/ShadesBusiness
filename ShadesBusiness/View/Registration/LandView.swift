//
//  LandPage.swift
//  ShadesBusiness
//
//  Created by 郭宇轩 on 10/31/22.
//

import SwiftUI

struct LandView: View {
    
    let color = Color(hex: 0x6FA6CE)
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 24)
                    .fill(.white)
                    .frame(width: UIScreen.main.bounds.width, height: 320, alignment: .center)
                    .overlay(
                        
                        VStack(spacing: 0){
                            
                            Text("Welcome to")
                                .font(Font.custom("Rubik", size: 34))
                                .fontWeight(.medium)
                            
                            Text("Shades Business")
                                .font(Font.custom("Rubik", size: 34))
                                .fontWeight(.medium)
                                .padding(.bottom, 40)
                            
                            Button {
                                
                            } label: {
                                Text("Sign Up")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Rubik", size: 16))
                                    .fontWeight(.medium)
                            }
                            .frame(width: 325, height: 50, alignment: .center)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(color)
                            )
                            .padding(.bottom, 50)
                            
                            NavigationLink {
                                
                            } label: {
                                Group{
                                    
                                    Text("Already have an account?  ")
                                        .foregroundColor(Color(hex: 0x636366))
                                        .font(Font.custom("Rubik", size: 14))
                                        .fontWeight(.regular)
                                    +
                                    Text("Login")
                                        .foregroundColor(color)
                                        .font(Font.custom("Rubik", size: 14))
                                        .fontWeight(.semibold)
                                }
                               
                            }
                            .padding(.bottom, 20)


                        }
                    
                    )
                
                    
            }
            .ignoresSafeArea()
            .background(color)
        }
        .ignoresSafeArea()
        
        
    }
}

struct LandView_Previews: PreviewProvider {
    static var previews: some View {
        LandView()
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
