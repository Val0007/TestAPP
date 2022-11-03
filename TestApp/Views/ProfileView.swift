//
//  ProfileView.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var profileImage:UIImage
    
    @State var isPresented = false
    
    var body: some View {
        VStack{
            Image(uiImage: profileImage)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: 200, height: 200)
                .background(.gray)
                .cornerRadius(100)
            Button {
                print("YES")
                isPresented = true
            } label: {
                Image(systemName: "pencil")
                    .font(.largeTitle)
                    .frame(width: 40, height: 40)
                    .border(.black, width: 2)
                    .background(.white)
                    .border(.black, width: 2)
                    .foregroundColor(.black)
                    .cornerRadius(100)
            }
            .offset(x:40,y: -40)

        }
        .sheet(isPresented: $isPresented) {
            print("YES")
            isPresented = false
        } content: {
            PhotoPicker(profileImage: $profileImage)
        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let img = UIImage(systemName: "person.fill")!
        ProfileView(profileImage:.constant(img))
    }
}
