//
//  TabBar.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

struct TabBar: View {
    @EnvironmentObject var router:ViewRouter
    var body: some View {
            HStack(alignment:.center){
                Button {
                    router.currentPage = .products
                } label: {
                    TabBarIcon(text: "Products", icon: "square.grid.2x2.fill",isActive: router.currentPage == .products ? true : false)
                }

                Button {
                    router.currentPage = .orders
                } label: {
                    
                    TabBarIcon(text: "Orders", icon: "suitcase.cart.fill",isActive: router.currentPage == .orders ? true : false)
                }

            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            

    }

}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(ViewRouter())
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
