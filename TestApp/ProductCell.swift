//
//  ProductCell.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

struct Product:Identifiable,Hashable{
    var id = UUID()
    var product_id:Int
    var name:String
    var stock:Int
    var selling_price:Int
}

var tempProduct = Product(product_id:1,name:"Cookie - Oatmeal",stock:92,
selling_price:141)

var tempProductList:[Product] = [
    Product(product_id:1,name:"Cookie - Oatmeal",stock:92,
    selling_price:141),
    Product(product_id:1,name:"Cookie - Oatmeal",stock:92,
    selling_price:141),
    Product(product_id:1,name:"Cookie - Oatmeal",stock:92,
    selling_price:141),
    Product(product_id:1,name:"Cookie - Oatmeal",stock:92,
    selling_price:141)
]

struct ProductCell: View {
    var product:Product
    var body: some View {
        VStack{
            Text("\(product.name)")
                .font(.title)
            Spacer()
            HStack{
                VStack(alignment:.leading,spacing: 4){
                    Text("id:\(product.product_id)")
                        .font(.title2)
                    Text("sp:\(product.selling_price)")
                        .font(.title3)
                        
                }
                Spacer()
                Text("\(product.stock)")
                    .bold()
                    .font(.title)
                    .fontWeight(.heavy)
            }
        }.padding()
        
            .border(.gray, width: 2)
            .cornerRadius(4)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: tempProduct)
            .frame(width: 140, height: 180)
            .previewLayout(.sizeThatFits)
    }
}
