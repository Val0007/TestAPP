//
//  OrderCellView.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

var tempList :[Order] = Array.init(repeating: Order(order_id:1,product_id:25,quantity:15,user_id:20,order_date:"1645767336"), count: 10)

struct Order:Identifiable,Hashable{
    var id: Int{
        return order_id
    }
    let order_id:Int
    let product_id:Int
    let quantity:Int
    let user_id:Int
    let order_date:String
}


struct OrderCellView: View {
    var order:Order
    var body: some View {
        HStack{
            VStack(alignment:.leading,spacing: 4){
                Text("Product ID : \(order.product_id)")
                    .font(.title2)
                Text("USER :\(order.order_id)")
                    .font(.title3)
                    
            }
            Spacer()
            Text("\(order.quantity)")
                .bold()
                .font(.title)
                .fontWeight(.heavy)
        }
        .padding()
        .border(.gray, width:2)
        .cornerRadius(5)
        .shadow(radius: 1)
        
        
    }
}

struct OrderCellView_Previews: PreviewProvider {
    static var previews: some View {
        OrderCellView(order: Order(order_id:1,product_id:25,quantity:15,user_id:20,order_date:"1645767336"))
            .previewLayout(.sizeThatFits)
    }
}
