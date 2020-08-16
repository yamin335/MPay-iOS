//
//  UserData.swift
//  QPay
//
//  Created by Md. Yamin on 8/13/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var selectedTabItem: Int = 0
    @Published var isLoggedIn = false
    @Published var isSplashShown = true
    @Published var loginFlow: String = LoginPagerView.TAG
    var successToastPublisher = PassthroughSubject<(Bool, String), Never>()
}
