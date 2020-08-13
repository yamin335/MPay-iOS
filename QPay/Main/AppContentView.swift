//
//  AppContentView.swift
//  QPay
//
//  Created by Md. Yamin on 8/13/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct AppContentView: View {
    @EnvironmentObject var userData: UserData
    let splashTime = 3.5
    
    var body: some View {
        ZStack {
            if userData.isSplashShown {
                SplashView()
            } else {
                LoginAndMainContainer()
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + self.splashTime) {
                withAnimation() {
                    self.userData.isSplashShown = false
                }
            }
        }
    }
}

struct AppContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppContentView().environmentObject(UserData())
    }
}
