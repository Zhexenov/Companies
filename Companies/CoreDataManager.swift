//
//  CoreDataManager.swift
//  Companies
//
//  Created by K3658 on 10/2/18.
//  Copyright © 2018 Jex. All rights reserved.
//

import CoreData

struct CoreDataManager {
    
    static let shared = CoreDataManager()
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CompaniesModel")
        container.loadPersistentStores { (storeDescription, err) in
            if let error = err {
                fatalError("Fatal error during initializing persistent container: \(error.localizedDescription)")
            }
        }
        return container
    }()
    
    private init() {
        
    }
    
    
}
