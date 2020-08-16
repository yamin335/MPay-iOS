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
            if userData.loginFlow == LoginPagerView.TAG {
                LoginPagerView()
            } else if userData.loginFlow == LoginNumberView.TAG {
                LoginNumberView()
            } else if userData.loginFlow == LoginOTPView.TAG {
                LoginOTPView()
            } else if userData.loginFlow == LoginPinView.TAG {
                LoginPinView()
            } else if userData.loginFlow == LoginProfileView.TAG {
                LoginProfileView()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(UserData())
    }
}
