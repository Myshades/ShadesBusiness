//
//  SignUpFile.swift
//  ShadesBusiness
//
//  Created by 郭宇轩 on 10/31/22.
//

import SwiftUI
import iPhoneNumberField

struct SignUpView: View {
    
    @State var company_name = ""
    @State var company_email = ""
    @State var first_name = ""
    @State var last_name = ""
    @State var phone_number = ""
    @State var hobby_name = ""
    
    var body: some View {
        
        VStack{
            
            RoundedRectangle(cornerRadius: 24)
                .fill(.white)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                .padding(.vertical, 10)
                .overlay(
                    
                    VStack(spacing: 25){
                        
                        Text("Sign Up")
                            .font(Font.custom("Rubik", size: 24))
                            .fontWeight(.medium)
                            .padding(.bottom, 15)
                        
                        TextField("Company Name", text: $company_name)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 100, height: 50, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        TextField("Email", text: $company_email)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 100, height: 50, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        TextField("First Name", text: $first_name)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 100, height: 50, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        TextField("Last Name", text: $last_name)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 100, height: 50, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        iPhoneNumberField("Phone Number", text: $phone_number)
                            .formatted(false)
                            .flagHidden(false)
                            .flagSelectable(true)
                            //.font(UIFont(size: 30, weight: .bold, design: .rounded))creen.main.bounds.width-40, height: 48)
                            .background(.white)
                            .cornerRadius(12)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 100, height: 50, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        TextField("Hobby Name", text: $hobby_name)
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 100, height: 50, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        Button {
                            
                        } label: {
                            Text("Continue")
                                .foregroundColor(.white)
                                .font(Font.custom("Rubik", size: 16))
                                .fontWeight(.medium)
                        }
                        .frame(width: 325, height: 50, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Constants.BusinessBlue)
                        )
                        
                        VStack(spacing: 0){
                            
                            let color = Color(hex: 0x1E1E1E).opacity(0.5)
                            
                            HStack(spacing: 0){
                                
                                let terms = "[Terms](\(URL(string: "https://www.useshade.io/terms")!))"
                                
                                Text("By signing up, you agree to our ")
                                    .font(Font.custom("DMSans-Regular", size: 14))
                                    .foregroundColor(color)
                                
                                
                                Text(.init(terms))
                                    .tint(Constants.BusinessBlue)
                                    .font(Font.custom("DMSans-Regular", size: 14))
                                
                                
                                Text(", ")
                                    .font(Font.custom("DMSans-Regular", size: 14))
                                    .foregroundColor(color)
                            }
                            
                            HStack(spacing: 0){
                                
                                let privacy = "[Privacy Policy](\(URL(string: "https://www.useshade.io/privacy-policy")!))"
                                
                                Text("and ")
                                    .font(Font.custom("DMSans-Regular", size: 14))
                                    .foregroundColor(color)
                                
                                
                                Text(.init(privacy))
                                    .tint(Constants.BusinessBlue)
                                    .font(Font.custom("DMSans-Regular", size: 14))
                                
                                
                                Text(". ")
                                    .font(Font.custom("DMSans-Regular", size: 14))
                                    .foregroundColor(color)
                            }
                        }
                        .padding(.bottom, 20)
                        
                        NavigationLink {
                            
                        } label: {
                            Group{
                                
                                Text("Already have an account?  ")
                                    .font(Font.custom("DMSans-Regular", size: 14))
                                    .foregroundColor(Color(hex: 0x1E1E1E).opacity(0.5))
                                +
                                Text("Login")
                                    .font(Font.custom("DMSans-Bold", size: 14))
                                    .foregroundColor(Constants.BusinessBlue)
                            }
                        }
                    }
                
                )
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .background(Constants.BusinessBlue.ignoresSafeArea())
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
