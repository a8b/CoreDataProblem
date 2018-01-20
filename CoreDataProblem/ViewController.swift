//
//  ViewController.swift
//  CoreDataProblem
//
//  Created by bbb on 1/20/18.
//  Copyright © 2018 bbb. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let unFetch = NSFetchRequest<University>(entityName: "University")
        unFetch.returnsObjectsAsFaults = false
        let c = try! AppDelegate.persistentContainer.viewContext.fetch(unFetch)
        
        
        // MARK: - Problem here - students array for some university is empty
        for un in c {
            print("students count \(un.students?.count ?? 0)")
            for student in un.students?.allObjects ?? [] {
                print("student \(student)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

