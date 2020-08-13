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
    @Published var selectedTabItem = 0
    @Published var isLoggedIn = false
    @Published var isSplashShown = true
    var successToastPublisher = PassthroughSubject<(Bool, String), Never>()
}
