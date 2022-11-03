//
//  OrderView.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        ScrollView{
            VStack(spacing:20){
                ForEach(tempList){ order in
                        OrderCellView(order: order)
                }
            }
        }
        .padding(EdgeInsets(top: 80, leading: 10, bottom: 20, trailing: 10))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
