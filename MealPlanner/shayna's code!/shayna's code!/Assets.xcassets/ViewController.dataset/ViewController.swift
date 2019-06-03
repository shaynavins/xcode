//
//  ViewController.swift
//  shayna's code!
//
//  Created by vinoth rajasekaran on 28/12/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate ,UIImagePickerControllerDelegate ,  UINavigationControllerDelegate{

    
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var photoimageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.delegate = self
        
    }
        
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
       }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        label.text = textField.text
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        photoimageview.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func testtest(_ sender: UITapGestureRecognizer) {
        print("testing")
    }
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        textfield.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    @IBAction func setDefaultText(_ sender: UIButton) {
        label.text = "something"
    }

}
