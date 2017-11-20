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
        self.navigationItem.title = "Recipe Box"
        loadSampleMeals()
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? RecipeViewCell else {
            fatalError("The dequeued cell is not an instance of RecipeViewCell.")
        }

        let recipe = recipes[indexPath.row]
        
        cell.recipeLabel.text = recipe.name
        cell.recipeImage.image = recipe.photo
        cell.ratingControl.rating = recipe.rating
        cell.prepTimeLabel.text = recipe.prepTime

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let seg = segue.destination as! RecipeViewController
        // Pass the selected object to the new view controller.
        if let indexPath = self.tableView.indexPathForSelectedRow {
            seg.recipe = recipes[indexPath.row]
        }
    }
    
    
    private func loadSampleMeals() {
        
        let photo1 = UIImage(named: "pancakes")
        let photo2 = UIImage(named: "pasta")
        let photo3 = UIImage(named: "ratatouille")
        
        let ingredients1:[String] = ["Pancakes:",
                                     "2 c. all purpose flour",
                                     "3 Tbsp. granulated sugar",
                                     "1 Tbsp. baking powder",
                                     "1/2 tsp. salt",
                                     "1 1/2 c. milk",
                                     "2 Tbsp. vegetable oil",
                                     "1.5 Tbsp. poppy seeds",
                                     "zest of 1 lemon",
                                     "6 Tbsp. Phil's Fresh Egg Whites",
                                     "Glaze:",
                                     "2 c. powdered sugar",
                                     "3-4 Tbsp. lemon juice",
                                     "1/2 tsp. poppy seeds"]
        
        let ingredients2:[String] = ["12 ounces spaghetti",
                                     "2 ripe avocados, halved, seeded and peeled",
                                     "1/2 cup fresh basil leaves",
                                     "2 cloves garlic",
                                     "2 tablespoons freshly squeezed lemon juice",
                                     "Kosher salt and freshly ground black pepper, to taste",
                                     "1/3 cup olive oil",
                                     "1 cup cherry tomatoes, halved",
                                     "1/2 cup canned corn kernels, drained and rinsed"]
        
        let ingredients3:[String] = ["1 (6 ounce) can tomato paste",
                                     "1/2 onion, chopped",
                                     "1/4 cup minced garlic",
                                     "1 tablespoon olive oil",
                                     "3/4 cup water",
                                     "salt and ground black pepper to taste",
                                     "1 zucchini, trimmed and very thinly sliced",
                                     "1 yellow squash, trimmed and very thinly sliced",
                                     "1 red bell pepper, cored and very thinly sliced",
                                     "1 yellow bell pepper, cored and very thinly sliced",
                                     "3 tablespoons olive oil, or to taste",
                                     "1 teaspoon fresh thyme leaves, or to taste",
                                     "3 tablespoons mascarpone cheese"]
        
        let steps1:[String] = ["In a large mixing bowl combine flour, granulated sugar, baking powder, and salt.",
                               "In a separate bowl, combine milk, oil, melted butter, lemon juice, poppy seeds, and lemon zest.",
                               "Mix well; add all at once to flour mixture.",
                               "Gently mix until just combined.",
                               "Beat egg whites until soft peaks form; gently fold into batter.",
                               "Let batter rest 5 minutes.",
                               "Pour by 1/4 c. onto prepared skillet.",
                               "Wait until bubbles form on the surface and pop; then flip pancakes until golden brown on both sides.",
                               "For glaze, combine powdered sugar, lemon juice, and poppy seeds and mix until smooth.",
                               "Pour over pancakes as desired."]
        
        let steps2:[String] = ["In a large pot of boiling salted water, cook pasta according to package instructions; drain well.",
                               "To make the avocado sauce, combine avocados, basil, garlic and lemon juice in the bowl of a food processor; season with salt and pepper, to taste. With the motor running, add olive oil in a slow stream until emulsified; set aside.",
                               "In a large bowl, combine pasta, avocado sauce, cherry tomatoes and corn.",
                               "Serve immediately."]
        
        
        let steps3:[String] = ["Preheat the oven to 375 degrees F (190 degrees C).",
                               "Spread tomato paste into the bottom of a 10x10-inch baking dish. Sprinkle with onion and garlic and stir in 1 tablespoon olive oil and water until thoroughly combined. Season with salt and black pepper.",
                               "Arrange alternating slices of eggplant, zucchini, yellow squash, red bell pepper, and yellow bell pepper, starting at the outer edge of the dish and working concentrically towards the center. Overlap the slices a little to display the colors. Drizzle the vegetables with 3 tablespoons olive oil and season with salt and black pepper. Sprinkle with thyme leaves. Cover vegetables with a piece of parchment paper cut to fit inside.",
                               "Bake in the preheated oven until vegetables are roasted and tender, about 45 minutes. Serve with dollops of mascarpone cheese."]
        
        guard let recipe1 = Recipe(name:"Lemon Poppy Pancakes", photo: photo1!, rating: 4, ingredients:ingredients1, steps:steps1, prepTime:"15 min") else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let recipe2 = Recipe(name:"Avacado Pasta", photo: photo2!, rating: 5, ingredients:ingredients2, steps:steps2, prepTime:"20 min") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let recipe3 = Recipe(name:"Ratatouille", photo: photo3!, rating: 3, ingredients:ingredients3, steps:steps3,prepTime:"40-60 min") else {
            fatalError("Unable to instantiate meal2")
        }
        
        recipes += [recipe1, recipe2, recipe3]
    }
}
