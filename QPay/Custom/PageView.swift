//
//  PageView.swift
//  QPay
//
//  Created by Md. Yamin on 8/14/20.
//  Copyright © 2020 QPay. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    @Binding var currentPage: Int
    var viewControllers: [UIHostingController<Page>]

    init(currentPage: Binding<Int>, _ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
        self._currentPage = currentPage
    }

    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                PageViewController(controllers: self.viewControllers, currentPage: self.$currentPage)
                PageControl(numberOfPages: self.viewControllers.count, currentPage: self.$currentPage)
                    .padding(.all)
            }
        }
    }
}
