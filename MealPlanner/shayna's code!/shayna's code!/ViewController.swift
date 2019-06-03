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
    
    @IBOutlet weak var imageviewforphoto: UIImageView!
    @IBOutlet weak var thankyou: UILabel!
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
        //label.text = textField.text
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    // once the image is selected in the photolibrary the following function is invoked
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        imageviewforphoto.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        textfield.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    @IBAction func clickEnter(_ sender: UIButton) {
        label.text = "Interesting cause"
    }

    @IBAction func Submit(_ sender: UIButton) {
        
        thankyou.text = "Thankyou for the Contribution"
    }
}
