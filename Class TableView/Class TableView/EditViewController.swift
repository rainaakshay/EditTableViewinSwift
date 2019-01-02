//
//  EditViewController.swift
//  Class TableView
//
//  Created by apple on 19/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var editName: UITextField!
    @IBOutlet weak var done: UIButton!
    @IBOutlet weak var back: UIButton!
   
    
    @IBAction func doneAction(_ sender: Any) {
        
        
       // performSegue(withIdentifier: "editDataSegue", sender: self)
     }
   

    
    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    var name : String = ""
    var index = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editName.text = name
      
        // Do any additional setup after loading the view.
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
