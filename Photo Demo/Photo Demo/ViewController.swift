//
//  ViewController.swift
//  Photo Demo
//
//  Created by Nick Natali on 1/1/17.
//  Copyright © 2017 Make It Appen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image =  info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            imageView.image = image
        } else {
            print("there was a problem getting the image")
        }
        
        self.dismiss(animated: true , completion: nil)
        
    }
    
    
    
    @IBAction func importImage(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        
        imagePickerController.delegate = self
        
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        imagePickerController.allowsEditing = false
        
        self.present(imagePickerController, animated: true, completion: nil)
  
        
    }
    
    
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

