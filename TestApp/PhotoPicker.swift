//
//  PhotoPicker.swift
//  TestApp
//
//  Created by Val V on 03/11/22.
//

import Foundation
import SwiftUI


struct PhotoPicker:UIViewControllerRepresentable{

    typealias UIViewControllerType = UIImagePickerController

    @Binding var profileImage:UIImage
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(photoPicker: self)
    }
    
    
    final class Coordinator:NSObject,UINavigationControllerDelegate,UIImagePickerControllerDelegate{
        
        let photoPicker:PhotoPicker
        
        init(photoPicker:PhotoPicker){
            self.photoPicker = photoPicker
        }
        
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
                photoPicker.profileImage = uiImage
                picker.dismiss(animated: true, completion: nil)
            }
            
        }
    }
}
