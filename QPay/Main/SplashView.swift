//
//  SplashView.swift
//  QPay
//
//  Created by Md. Yamin on 8/13/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    @State var imageAlpha = 0.0
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            HStack(alignment: .center) {
                Spacer()
                Image("qpay_logo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .opacity(imageAlpha)
                    .onAppear(){
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                self.imageAlpha = 1
                            }
                        }
                    }
                Spacer()
            }
            Spacer()
        }
        .background(Colors.colorTheme)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
