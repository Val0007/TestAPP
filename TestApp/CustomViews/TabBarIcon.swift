//
//  TabBarIcon.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

struct TabBarIcon: View {
    
    var text:String
    var icon:String
    var isActive:Bool

    
    var body: some View {
        let color:Color = isActive == true ?Color.black:Color.gray
        
        GeometryReader{ geo in
            let frame  = geo.frame(in: .local)
            VStack{
                Spacer()
            Image(systemName: icon)
                .frame(height: frame.width/6)
                .font(.system(size: 30))
                .foregroundColor(color)
                
            Text("\(text)")
                    .bold()
                    .foregroundColor(color)
                Spacer()
        }
            .frame(width:frame.width)
    }
    }
}

struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabBarIcon(text: "Product", icon: "square.grid.2x2.fill", isActive: false)
    }
}
