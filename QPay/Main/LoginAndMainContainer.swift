//
//  LoginAndMainContainer.swift
//  QPay
//
//  Created by Md. Yamin on 8/13/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct LoginAndMainContainer: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        ZStack {
            if userData.isLoggedIn {
                MainView()
            } else {
                LoginView()
            }
        }
    }
}

struct LoginAndMainContainer_Previews: PreviewProvider {
    static var previews: some View {
        LoginAndMainContainer().environmentObject(UserData())
    }
}
