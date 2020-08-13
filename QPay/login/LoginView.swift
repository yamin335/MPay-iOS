//
//  LoginView.swift
//  QPay
//
//  Created by Md. Yamin on 8/13/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                Image("qpay_logo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.top, 80)
                
                Spacer()
                
                Button(action: {
                    // Write button action here
                }) {
                    HStack{
                        Spacer()
                        Text("Continue")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .regular, design: .default))
                        Spacer()
                    }
                    .padding(.top, 11)
                    .padding(.bottom, 11)
                    .background(Colors.colorGreenButton)
                    .cornerRadius(4)
                }.padding(.top, 32)
                .padding(.bottom, 32)
                .padding(.leading, 32)
                .padding(.trailing, 32)
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }.background(Colors.colorTheme)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
