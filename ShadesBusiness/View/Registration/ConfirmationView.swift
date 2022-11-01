//
//  ConfirmationView.swift
//  ShadesBusiness
//
//  Created by 郭宇轩 on 10/31/22.
//

import SwiftUI

struct ConfirmationView: View {
    
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                ZStack{
                    
                    ZStack{
                        
                        Circle()
                            .fill(.white)
                            .frame(width: 72)
                            .overlay(
                                Circle()
                                    .stroke(.white, lineWidth: 2)
                                    .frame(width: 108)
                            )
                        
                        Image("Confirmation")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 43, height: 43)
                        
                    }
                    
                    Circle()
                        .stroke(Color.white.opacity(0.7), lineWidth: 1)
                        .frame(width: screenWidth * 200 / 375)
                    
                    Circle()
                        .stroke(Color.white.opacity(0.5), lineWidth: 1)
                        .frame(width: screenWidth * 300 / 375)
                    
                    Circle()
                        .stroke(Color.white.opacity(0.3), lineWidth: 1)
                        .frame(width: screenWidth * 400 / 375)

                }
                .frame(height: UIScreen.main.bounds.height * 450 / 812, alignment: .center)
                .padding(.bottom, 10)
                .padding(.top, 50)
                
                Spacer()
            }
           
            
            VStack{
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 24)
                    .fill(.white)
                    .frame(width: UIScreen.main.bounds.width, height: 320, alignment: .center)
                    .overlay(
                        
                        VStack(spacing: 2){
                            
                            Text("Confirmation")
                                .font(Font.custom("Rubik", size: 24))
                                .fontWeight(.medium)
                                .padding(.bottom, 14)
                            
                            Text("Your application has been submitted. We will")
                                .foregroundColor(Constants.BusinessGray)
                                .font(Font.custom("Rubik", size: 14))
                                .fontWeight(.regular)
                            
                            Text("contact you shortly. We are excited to have ")
                                .foregroundColor(Constants.BusinessGray)
                                .font(Font.custom("Rubik", size: 14))
                                .fontWeight(.regular)
                            
                            Group{
                                
                                Text("you on  ")
                                    .foregroundColor(Constants.BusinessGray)
                                    .font(Font.custom("Rubik", size: 14))
                                    .fontWeight(.regular)
                                +
                                Text("Shades Business ")
                                    .foregroundColor(Constants.BusinessBlue)
                                    .font(Font.custom("Rubik", size: 14))
                                    .fontWeight(.bold)
                                    
                            }
                            .padding(.bottom, 40)
                           
                            
                            Button {
                                
                            } label: {
                                Text("To Home Page")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Rubik", size: 16))
                                    .fontWeight(.medium)
                            }
                            .frame(width: 325, height: 50, alignment: .center)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Constants.BusinessBlue)
                            )

                        }
                    
                    )
                
                    
            }
        }
        .ignoresSafeArea()
        .background(Constants.BusinessBlue)
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView()
    }
}
