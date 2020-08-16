//
//  LoginPinView.swift
//  QPay
//
//  Created by Md. Yamin on 8/16/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginPinView: View {
    static public let TAG: String = "LoginPinView"
    @EnvironmentObject var userData: UserData
    @State var pinNumber: String = ""
    @State var reTypePinNumber: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Button(action: {
                        self.userData.loginFlow = LoginOTPView.TAG
                    }) {
                        Image(systemName: "arrow.left")
                        .imageScale(.large)
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        .cornerRadius(0)
                    }
                    
                    Text("Pin Verification").foregroundColor(.white).font(Font.custom("Verdana", size: 20)).padding(.leading, 16)
                    
                    Spacer()
                }.padding(.top, 52).padding(.leading, 20)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Pin Number")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .regular, design: .default))
                        VStack(alignment: .leading, spacing: 6) {
                            TextField("", text: self.$pinNumber, onEditingChanged: { changed in
                                if changed {

                                } else {
                                    
                                }
                                
                            })
                            .placeHolder(Text("Enter your 5 digit pin number").foregroundColor(Colors.colorGray).font(Font.custom("Verdana", size: 20)), show: self.pinNumber.isEmpty)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .regular, design: .default))
                                .keyboardType(.numberPad)
                            Rectangle().frame(height: 2).foregroundColor(Colors.colorThemeBlue)
                        }
                    }.padding(.leading, 20)
                    Spacer()
                }.frame(width: geometry.size.width).padding(.top, 32)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Re-Type Pin")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .regular, design: .default))
                        VStack(alignment: .leading, spacing: 6) {
                            TextField("", text: self.$reTypePinNumber, onEditingChanged: { changed in
                                if changed {

                                } else {
                                    
                                }
                                
                            })
                            .placeHolder(Text("Re-type Pin Number").foregroundColor(Colors.colorGray).font(Font.custom("Verdana", size: 20)), show: self.reTypePinNumber.isEmpty)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .regular, design: .default))
                                .keyboardType(.numberPad)
                            Rectangle().frame(height: 2).foregroundColor(Colors.colorThemeBlue)
                        }
                    }.padding(.leading, 20)
                    Spacer()
                }.frame(width: geometry.size.width).padding(.top, 20)
                    
                Spacer()
                    Spacer()
                Button(action: {
                    self.userData.loginFlow = LoginProfileView.TAG
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

struct LoginPinView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPinView()
    }
}
