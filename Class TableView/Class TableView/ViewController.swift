//
//  ViewController.swift
//  Class TableView
//
//  Created by apple on 19/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var tableview: UITableView!
    var name = String()
    var index = Int()
     var names = ["Akshay","Raghava","Shubham","Reeti","Kamaljeet","Tripti","Ujjwala","Alok","Taushik","Avinash","Pratibha","Arpit","Shipra","Rohit","Hemlata","Shanthan","Arpit","Kamal","Prashant","Sankalp","Tiwari","Rahul","Sarabjit","Ankur","Neha","Sanchit","Aashi","Mrinalini","Kriti","Anurodh","Aditya","Himani","Gaurav","Raman","Keshav","Sikandar"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(names[indexPath.row])
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let vc = self.storyboard?.instantiateViewController(withIdentifier: "EditViewController") as! EditViewController
        
        vc.name = names[indexPath.row]
        vc.index = indexPath.row
        self.present(vc, animated: true, completion: nil)
        
       // name = names[indexPath.row]
    }
    
    @IBAction func unwindToFirstVC(segue:UIStoryboardSegue) {
        let newVC = segue.source as! EditViewController
        
        names[newVC.index] = newVC.editName.text!
    
        tableview.beginUpdates()
        tableview.reloadData()
        tableview.endUpdates()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.delegate = self
        tableview.dataSource = self
        
//        if index != 0
//        {
//        names[index] = name
//        }
        
    }
    
   
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//
////        if segue.identifier == "editSegue"
////        {
//             let destination = segue.destination as! EditViewController
//
//        }
    
//    }
    


}

