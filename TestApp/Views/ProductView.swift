//
//  ProductView.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI




struct ProductView: View {
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: gridItemLayout) {
                ForEach(tempProductList,id:\.id) {prod in
                    ProductCell(product: prod)
                }.onAppear {
                    print(tempProductList)
                }
            }
        }
        .padding(EdgeInsets(top: 60, leading: 14, bottom: 20, trailing: 14))

    }
        
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
