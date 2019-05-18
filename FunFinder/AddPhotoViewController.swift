//
//  AddPhotoViewController.swift
//  FunFinder
//
//  Created by Marnie Reid on 5/18/19.
//  Copyright © 2019 Marnie Reid. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        //print("photo library tapped") <- good place to check that this is working
        imagePicker.sourceType = .photoLibrary
        //sets image Picker to photo lib, but haven't told it to go yet
        present(imagePicker, animated: true, completion: nil)
        //tells them to bring the photo lib "forward"
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //Code below updates photo
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = selectedImage
        }
        // go back to addPhotoViewController
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
