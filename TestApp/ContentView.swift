//
//  ContentView.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router:ViewRouter
    @State var profileImage:UIImage = UIImage(systemName: "person.fill")!
    
    
    var body: some View {
        NavigationView{
            ZStack{
                switch router.currentPage{
                case .products:
                    ProductView()
                case .orders:
                    OrderView()
                
                }
                GeometryReader{ geo in
                    VStack{
                        TabBar()
                            .frame(width: geo.size.width/1.8, height: geo.size.height * 0.1)
                            .position(x:geo.size.width/2,y:geo.size.height - geo.size.height * 0.08)
                        
                    }
                }
            }.ignoresSafeArea()
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: ProfileView(profileImage: $profileImage)) {
                            ZStack{
                                Circle().fill(Color.red)
                                Image(uiImage: profileImage)
                                    .resizable()
                                    .aspectRatio( contentMode: .fill)
                                    .frame(width: 40, height: 40)
                                    .cornerRadius(20)
                                    
                                    
                            }

                        }

                    }
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
