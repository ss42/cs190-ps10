//
//  ViewController.swift
//  Plist Opener
//
//  Created by Brian Hill on 5/2/16.
//

import UIKit

class TitleViewController: UIViewController {
    
    @IBOutlet weak var displayErrorTextView: UITextView!
    
    var plistTitle: String! = nil
    
    @IBOutlet weak var titleTextField: UITextField! = nil
    
    var error: ErrorType! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayErrorTextView.hidden = true
    }
    
    override func viewWillAppear(animated: Bool) {
        titleTextField.text = plistTitle
        super.viewWillAppear(animated)
        
        if error != nil{
            displayErrorTextView.text = String(error)
            self.displayErrorTextView.hidden = false
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
