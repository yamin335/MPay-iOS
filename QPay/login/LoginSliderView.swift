//
//  LoginSliderView.swift
//  QPay
//
//  Created by Md. Yamin on 8/14/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginSliderView: View {
    @State var title: String
    @State var description: String
    var body: some View {
        VStack {
            HStack {
                Spacer()
            }
            Image("slider_image")
            .resizable()
            .scaledToFit().padding(.top, 16)
            
            Spacer()
            
            Text(title).foregroundColor(.white).font(Font.custom("Verdana", size: 24)).fontWeight(.semibold)
            Text(description).foregroundColor(.white).font(Font.custom("Verdana", size: 17)).padding(.bottom, 16)
            
        }.background(Colors.colorTheme)
    }
}

struct LoginSliderView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSliderView(title: "Transfer your Money", description: "Easy, Fast and Secure Way")
    }
}
