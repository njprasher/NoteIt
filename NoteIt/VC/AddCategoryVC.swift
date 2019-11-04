//
//  AddCategoryVC.swift
//  NoteIt
//
//  Created by vipul garg on 2019-11-04.
//  Copyright © 2019 vipul garg. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class AddCategoryVC : UIViewController {

    @IBOutlet weak var categoryTitleTF: UITextField!
    
    var dataManager : NSManagedObjectContext!;
    var listArray = [NSManagedObject]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate;
        dataManager = appDelegate.persistentContainer.viewContext;
    }
    
    @IBAction func addCategoryBTN(_ sender: UIButton) {
        let catEntity = NSEntityDescription.insertNewObject(forEntityName: "Category", into: dataManager);
        
            catEntity.setValue(categoryTitleTF.text!, forKey: "categoryName")
            catEntity.setValue(categoryTitleTF.text!, forKey: "categoryName")
            catEntity.setValue(1, forKey: "catergoryID")
            
        do {
        try self.dataManager.save()
            listArray.append(catEntity);
        } catch {
        print ("Error saving data")
            }
        categoryTitleTF.text?.removeAll();
    }
}


