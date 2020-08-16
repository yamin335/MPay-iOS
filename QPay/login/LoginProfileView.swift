//
//  LoginProfileView.swift
//  QPay
//
//  Created by Md. Yamin on 8/16/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginProfileView: View {
    static public let TAG: String = "LoginProfileView"
    @EnvironmentObject var userData: UserData
    @State var fullName: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Button(action: {
                        self.userData.loginFlow = LoginPinView.TAG
                    }) {
                        Image(systemName: "arrow.left")
                        .imageScale(.large)
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        .cornerRadius(0)
                    }
                    
                    Text("Profile ").foregroundColor(.white).font(Font.custom("Verdana", size: 20)).padding(.leading, 16)
                    
                    Spacer()
                }.padding(.top, 52).padding(.leading, 20)
                
                Image("profile_placeholder")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                    .padding(.top, 20)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Full Name")
                            .foregroundColor(.white)
                            .font(Font.custom("Verdana", size: 18))
                        VStack(alignment: .leading, spacing: 6) {
                            TextField("", text: self.$fullName, onEditingChanged: { changed in
                                if changed {
                                    
                                } else {
                                    
                                }
                                
                            })
                            .placeHolder(Text("Enter your full name").foregroundColor(Colors.colorGray).font(Font.custom("Verdana", size: 20)), show: self.fullName.isEmpty)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .regular, design: .default))
                                .keyboardType(.default)
                            Rectangle().frame(height: 2).foregroundColor(Colors.colorThemeBlue)
                        }
                    }.padding(.horizontal, 20)
                    Spacer()
                }.frame(width: geometry.size.width).padding(.top, 40)
                
                Spacer()
                Button(action: {
                    self.userData.isLoggedIn = true
                }) {
                    HStack{
                        Spacer()
                        Text("Submit")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .regular, design: .default))
                        Spacer()
                    }
                    .padding(.top, 12)
                    .padding(.bottom, 12)
                    .background(Colors.colorGreenButton)
                    .cornerRadius(0)
                }
                .modifier(LoginButtonModifier(bottomPad: 0))
                    .padding(.bottom, 0)
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }.background(Colors.colorTheme)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginProfileView_Previews: PreviewProvider {
    static var previews: some View {
        LoginProfileView()
    }
}
