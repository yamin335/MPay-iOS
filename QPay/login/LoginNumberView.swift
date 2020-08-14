//
//  LoginNumberView.swift
//  QPay
//
//  Created by Md. Yamin on 8/14/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginNumberView: View {
    @EnvironmentObject var userData: UserData
    @State var mobileNumber: String = ""
    
    init() {
        print("Pre loaded")
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Button(action: {
                        self.userData.loginFlow = 0
                    }) {
                        Image(systemName: "arrow.left")
                        .imageScale(.large)
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        .cornerRadius(0)
                    }
                    
                    Text("Sign In").foregroundColor(.white).font(Font.custom("Verdana", size: 20)).padding(.leading, 16)
                    
                    Spacer()
                }.padding(.top, 40).padding(.leading, 20)
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
                                TextField("jgldjlfdjhld", text: self.$mobileNumber).foregroundColor(.white)
                                .font(.system(size: 20, weight: .regular, design: .default))
                            }
                            Rectangle().frame(height: 2).foregroundColor(Colors.colorThemeBlue)
                        }
                    }.padding(.leading, 20)
                    Spacer()
                }.frame(width: geometry.size.width).padding(.top, 32)
                
                Spacer()
                
                Button(action: {
                    //self.userData.loginFlow = 0
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
                }.padding(.top, 20).padding(.bottom, 0)
                //.modifier(LoginButtonModifier(bottomPad: 20))
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
