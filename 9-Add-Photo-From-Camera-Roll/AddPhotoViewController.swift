//
//  AddPhotoViewController.swift
//  9-Add-Photo-From-Camera-Roll
//
//  Created by vmalikov on 3/2/16.
//  Copyright © 2016 justForFun. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var selectedImage: UIImageView!
    
    let pickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.becomeFirstResponder()
        
        initPickerController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initPickerController() {
        self.pickerController.delegate = self
        self.pickerController.allowsEditing = true
        self.pickerController.sourceType = .PhotoLibrary
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        dismissViewControllerAnimated(true, completion: nil)
        self.selectedImage.image = image
    }
    
    // MARK: Action
    
    @IBAction func openPhotoLibrary(sender: AnyObject) {
        self.presentViewController(self.pickerController, animated: true, completion: nil)
    }
}
