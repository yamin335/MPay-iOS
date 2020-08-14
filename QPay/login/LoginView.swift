//
//  LoginView.swift
//  QPay
//
//  Created by Md. Yamin on 8/13/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        ZStack {
            if userData.loginFlow == 0 {
                LoginPagerView()
            } else if userData.loginFlow == 1 {
                LoginNumberView()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(UserData())
    }
}
