//
//  LoginButtonModifier.swift
//  QPay
//
//  Created by Md. Yamin on 8/14/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI
import Foundation
import Combine

// MARK: - LoginButtonModifier
struct LoginButtonModifier: ViewModifier {
    @State var bottomPadding: CGFloat
    var bottomPad: CGFloat = 0
    
    init(bottomPad: CGFloat) {
        self._bottomPadding = State(initialValue: bottomPad)
        self.bottomPad = bottomPad
    }

    func body(content: Content) -> some View {
        GeometryReader { geometry in
            content
                .padding(.bottom, self.bottomPadding)
                .animation(.easeOut(duration: 0.15))
                .onAppear(perform: {
                    NotificationCenter.Publisher(center: NotificationCenter.default, name: UIResponder.keyboardWillShowNotification)
                        .merge(with: NotificationCenter.Publisher(center: NotificationCenter.default, name: UIResponder.keyboardWillChangeFrameNotification))
                        .compactMap { notification in
                            notification.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? CGRect
                    }
                    .map { rect in
                        //rect.height - geometry.safeAreaInsets.bottom
                        rect.height
                    }
                    .subscribe(Subscribers.Assign(object: self, keyPath: \.bottomPadding))

                    NotificationCenter.Publisher(center: NotificationCenter.default, name: UIResponder.keyboardWillHideNotification)
                        .compactMap { notification in
                            self.bottomPad
                    }
                    .subscribe(Subscribers.Assign(object: self, keyPath: \.bottomPadding))
                })
        }
    }
}
