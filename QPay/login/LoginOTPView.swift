//
//  LoginOTPView.swift
//  QPay
//
//  Created by Md. Yamin on 8/16/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginOTPView: View {
    static public let TAG: String = "LoginOTPView"
    @EnvironmentObject var userData: UserData
    @State var otpCode: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Button(action: {
                        self.userData.loginFlow = LoginNumberView.TAG
                    }) {
                        Image(systemName: "arrow.left")
                        .imageScale(.large)
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        .cornerRadius(0)
                    }
                    
                    Text("OTP Verification").foregroundColor(.white).font(Font.custom("Verdana", size: 20)).padding(.leading, 16)
                    
                    Spacer()
                }.padding(.top, 52).padding(.leading, 20)
                
                Text("An OTP code has been sent to your mobile").foregroundColor(.white).font(Font.custom("Verdana", size: 18))
                    .multilineTextAlignment(.center)
                    .padding(.top, 20).padding(.horizontal, 40)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("OTP Code")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .regular, design: .default))
                        VStack(alignment: .leading, spacing: 6) {
                            TextField("", text: self.$otpCode, onEditingChanged: { changed in
                                if changed {

                                } else {
                                    
                                }
                                
                            })
                            .placeHolder(Text("Enter OTP here").foregroundColor(Colors.colorGray).font(Font.custom("Verdana", size: 20)), show: self.otpCode.isEmpty)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .regular, design: .default))
                                .keyboardType(.numberPad)
                            Rectangle().frame(height: 2).foregroundColor(Colors.colorThemeBlue)
                        }
                    }.padding(.leading, 20)
                    Spacer()
                }.frame(width: geometry.size.width).padding(.top, 32)
                    
                Spacer()
                    Spacer()
                Button(action: {
                    self.userData.loginFlow = LoginPinView.TAG
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
        }
        .background(Colors.colorTheme)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginOTPView_Previews: PreviewProvider {
    static var previews: some View {
        LoginOTPView()
    }
}
