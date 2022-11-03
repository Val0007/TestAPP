//
//  Router.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import Foundation


enum Page{
    case products
    case orders
}

class ViewRouter:ObservableObject{
    @Published var currentPage:Page = .products
}
