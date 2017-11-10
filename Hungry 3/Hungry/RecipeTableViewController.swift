//
//  RecipeTableViewController.swift
//  Hungry
//
//  Created by Rebekkah Koo on 10/31/17.
//  Copyright © 2017 Rebekkah Koo. All rights reserved.
//

import UIKit

class RecipeTableViewController: UITableViewController {

    var recipes:[Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Recipe Box"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
//    private func loadSampleMeals() {
//        
//        let photo1 = UIImage(named: "pancakes")
//        let photo2 = UIImage(named: "pasta")
//        let photo3 = UIImage(named: "ratatouille")
//        
//        let ingredients1:[String] = []
//        let ingredients2:[String] = []
//        let ingredients3:[String] = []
//        
//        let steps1:[String] = []
//        let steps2:[String] = []
//        let steps3:[String] = []
//        
//        guard let recipe1 = Recipe(name: "Lemon Poppy Pancakes", photo: photo1, rating: 4, ingredients:ingredients1, steps:steps1) else {
//            fatalError("Unable to instantiate meal1")
//        }
//        
//        guard let recipe2 = Recipe(name: "Avacado Pasta", photo: photo2, rating: 5, ingredients:ingredients1, steps:steps1) else {
//            fatalError("Unable to instantiate meal2")
//        }
//        
//        guard let recipe3 = Recipe(name: "Ratatouille", photo: photo3, rating: 3, ingredients:ingredients1, steps:steps1) else {
//            fatalError("Unable to instantiate meal2")
//        }
//        
//        meals += [meal1, meal2, meal3]
//    }
    

}
