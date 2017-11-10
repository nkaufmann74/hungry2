//
//  PersistenceService.swift
//  Hungry
//
//  Created by Rebekkah Koo on 10/31/17.
//  Copyright © 2017 Rebekkah Koo. All rights reserved.
//
//
//  PersistenceService.swift
//  TestCoreData2
//
//  Created by Robert Seitsinger on 10/9/17.
//  Copyright © 2017 Summer Moon Solutions. All rights reserved.
//

import Foundation
import CoreData

class PersistenceService {
    
    // Provide external access to this Singleton.
    static let shared = PersistenceService()
    
    private var items:[NSManagedObject]!
    
    // MARK: - Core Data stack
    
    private var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    private lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "Hungry")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    // We want this class to be a Singleton.
    // To keep it that way, don't allow any code outside this class to instantiate an object of this type.
    private init() {}
    
    func count() -> Int {
        return items.count
    }
    
    func getItem(index:Int) -> Item {
        if index < items.count {
            let item = items[index]
            let n = item.value(forKey: "name") as! String
            return Item(name: n)
        } else {
            return Item(name: "<bad>")
        }
    }
    
    func fetchItems() {
        
        let managedContext = persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"Item")
        
        var fetchedResults:[NSManagedObject]? = nil
        
        do {
            try fetchedResults = managedContext.fetch(fetchRequest) as? [NSManagedObject]
        } catch {
            // what to do if an error occurs?
            let nserror = error as NSError
            NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
            abort()
        }
        
        guard let results = fetchedResults else { return }
        
        items = results
    }
    
    func saveItem(name: String) {
        
        let managedContext = persistentContainer.viewContext
        
        // Create the entity we want to save
        let entity = NSEntityDescription.entity(forEntityName: "Item", in: managedContext)
        
        let item = NSManagedObject(entity: entity!, insertInto:managedContext)
        
        // Set the attribute values
        item.setValue(name, forKey: "name")
        
        // Commit the changes.
        do {
            try managedContext.save()
            items.append(item)
        } catch {
            // what to do if an error occurs?
            let nserror = error as NSError
            NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
            abort()
        }
    }
    
}

