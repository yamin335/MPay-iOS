//
//  LoginNumberView.swift
//  QPay
//
//  Created by Md. Yamin on 8/14/20.
//  Copyright © 2020 QPay. All rights reserved.
//
import UIKit
import SwiftUI
import Combine

struct LoginNumberView: View {
    static public let TAG: String = "LoginNumberView"
    @EnvironmentObject var userData: UserData
    @State var mobileNumber: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Button(action: {
                        self.userData.loginFlow = LoginPagerView.TAG
                    }) {
                        Image(systemName: "arrow.left")
                        .imageScale(.large)
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        .cornerRadius(0)
                    }
                    
                    Text("Welcome to QPay ").foregroundColor(.white).font(Font.custom("Verdana", size: 20)).padding(.leading, 16)
                    
                    Spacer()
                }.padding(.top, 52).padding(.leading, 20)
                Image("qpay_logo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.top, 20)
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Mobile")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .regular, design: .default))
                        VStack(alignment: .leading, spacing: 6) {
                            HStack(alignment: .top) {
                                Text("+88")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .regular, design: .default))
                                TextField("", text: self.$mobileNumber, onEditingChanged: { changed in
                                    if changed {
                                        
                                    } else {
                                        
                                    }
                                    
                                })
                                .placeHolder(Text("Enter mobile number").foregroundColor(Colors.colorGray).font(Font.custom("Verdana", size: 20)), show: self.mobileNumber.isEmpty)
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .regular, design: .default))
                                    .keyboardType(.namePhonePad)
                            }
                            Rectangle().frame(height: 2).foregroundColor(Colors.colorThemeBlue)
                        }
                    }.padding(.horizontal, 20)
                    Spacer()
                }.frame(width: geometry.size.width).padding(.top, 32)
                
                Spacer()
                Button(action: {
                    self.userData.loginFlow = LoginOTPView.TAG
                }) {
                    HStack{
                        Spacer()
                        Text("Proceed")
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

struct LoginNumberView_Previews: PreviewProvider {
    static var previews: some View {
        LoginNumberView().environmentObject(UserData())
    }
}
