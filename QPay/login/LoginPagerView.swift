//
//  LoginPagerView.swift
//  QPay
//
//  Created by Md. Yamin on 8/14/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginPagerView: View {
    @State var isView1Active: Bool = false
    @EnvironmentObject var userData: UserData
    @State var sliderCurrentPosition: Int = 0
    
    var body: some View {
         NavigationView {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                Image("qpay_logo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.top, 80)
                
                PageView(currentPage: self.$sliderCurrentPosition, [LoginSliderView(title: "Transfer your Money", description: "Easy, Fast and Secure Way"), LoginSliderView(title: "Transfer your Money", description: "Easy, Fast and Secure Way"), LoginSliderView(title: "Transfer your Money", description: "Easy, Fast and Secure Way"), LoginSliderView(title: "Transfer your Money", description: "Easy, Fast and Secure Way"), LoginSliderView(title: "Transfer your Money", description: "Easy, Fast and Secure Way")]).padding(.top, 32)
                
                Spacer()
                
                NavigationLink(destination: LoginNumberView(), isActive: self.$isView1Active)  {
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
                }.padding(.top, 20)
                .padding(.bottom, 32)
                .padding(.leading, 32)
                .padding(.trailing, 32)
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }.background(Colors.colorTheme)
        .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LoginPagerView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPagerView().environmentObject(UserData())
    }
}
