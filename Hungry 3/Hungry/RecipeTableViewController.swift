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
        let photo4 = UIImage(named: "carrotCake")
        let photo5 = UIImage(named: "chicken")
        let photo6 = UIImage(named: "chocolateCroissants")
        let photo7 = UIImage(named: "brusselSprouts")
        let photo9 = UIImage(named: "steak")
        
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
        
        let ingredients4:[String] = ["2 cups (260 grams) all-purpose flour",
                                     "2 teaspoons baking soda",
                                     "1 teaspoon kosher salt",
                                     "1 1/2 teaspoons ground cinnamon",
                                     "1 1/4 cups (295 ml) canola or other vegetable oil",
                                     "1 cup (200 grams) granulated sugar",
                                     "1 cup (200 grams) lightly packed brown sugar",
                                     "1 teaspoon vanilla extract",
                                     "4 large eggs",
                                     "3 cups (300 grams) grated peeled carrots (5 to 6 medium carrots)",
                                     "1 cup (100 grams) coarsely chopped pecans",
                                     "1/2 cup (65 grams) raisins",
                                     "8 ounces (225 grams) cream cheese, at room temperature",
                                     "1 1/4 cups (140 grams) powdered sugar",
                                     "1/3 cup (80 ml) heavy whipping cream",
                                     "1/2 cup (50 grams) coarsely chopped pecans, for topping cake"]
        
        
        let ingredients5:[String] = ["2 cloves garlic",
                                     "2 cups spinach",
                                     "1/2 cup ricotta cheese",
                                     "1/4 cup parmesan cheese",
                                     "4 chicken breasts, thinly sliced",
                                     "2 eggs, beaten",
                                     "1 cup seasoned bread crumbs",
                                     "1 cup marinara",
                                     "4 slices mozzarella cheese",
                                     "fresh basil, chopped",
                                     "salt and pepper, to taste"]
        
        let ingredients6:[String] = ["4 cups flour",
                                     "½ cup water",
                                     "½ cup milk",
                                     "¼ cup sugar",
                                     "2 teaspoons salt",
                                     "1 packet instant yeast",
                                     "3 tablespoons unsalted butter, softened",
                                     "1 ¼ cups cold unsalted butter, cut into ½-inch (1 cm) thick slices",
                                     "1 egg, beaten",
                                     "2 bars chocolate"]
        
        let ingredients7:[String] = ["2 lb brussel sprout, halved",
                                     "8 strips bacon",
                                     "2 teaspoons salt",
                                     "1/2 teaspoon pepper",
                                     "1/3 cup apple cider vinegar",
                                     "1 tablespoon brown sugar",
                                     "5 cloves garlic, minced",
                                     "fresh chives, chopped to serve" ]
        
        let ingredients9:[String] = ["1 lb flank steak",
                                     "1/2 cup soy sauce",
                                     "3 cloves minced garlic",
                                     "1 tablesoon ginger, grated",
                                     "2 tablespoons honey",
                                     "1 lime, juiced",
                                     "1 teaspoon sriracha sauce",
                                     "1 bell pepper, sliced",
                                     "1 carrot, sliced lengthwise",
                                     "1 zucchini, sliced lengthwise",
                                     "16 stalks asparagus, halved",
                                     "1 red onion, sliced",
                                     "sesame seed, to taste",
                                     "toothpicks"]
        
        
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
        
        let steps4:[String] = ["Heat the oven to 350º F. Grease two 9-inch round cake pans and line the bottom with parchment paper then grease the top of the paper. Or, grease and flour the bottom and sides of both pans.",
                               "In a medium bowl, whisk flour, baking soda, salt, and the cinnamon until well blended. In a separate bowl, whisk the oil, sugars and vanilla. Whisk in eggs, one at a time, until blended.",
                               "Switch to a large rubber spatula. Scrape the sides and bottom of the bowl then add the dry ingredients in 3 parts, stirring gently until they disappear and the batter is smooth. Stir in the carrots, nuts and raisins.",
                               "Divide the batter between the prepared cake pans. Bake until the tops of the cake layers are springy when touched and when a toothpick inserted into the center of the cake comes out clean; 35 to 45 minutes.",
                               "Cool cakes in pans for 15 minutes then turn out onto cooling racks, peel off parchment paper and cool completely.",
                               "In a large bowl, beat cream cheese with a handheld mixer on medium speed until creamy, about 1 minute. Beat in the powdered sugar, a 1/4 cup at a time until fluffy. Pour in cream and beat on medium speed for 1 minute. Chill covered until ready to frost cake.",
                               "When the cake layers are completely cool, frost the top of one cake layer, place the other cake layer on top. Decoratively swirl the top of the cake with remaining frosting, leaving the sides unfrosted. Scatter nuts on top."]
        
        let steps5:[String] = ["Preheat oven to 450.",
                               "Saute the garlic and spinach in oil until the spinach wilts. Add the ricotta, parmesan, salt, and pepper, and stir until heated.",
                               "Salt and ppepr the chicken breats, add the cheese mixture, and roll 'em up.",
                               "Dip each chicken breast roll-up in the egg, then the breadcrumbs, and place in 8x8 or 9x9 baking dish with seam down.",
                               "Bake for 25 minutes.",
                               "Remove from over and top with marinara sauce and mozzarella. Bake an additional 5 minutes. Remove from and top with basil. Enjoy!."]
        
        let steps6:[String] = ["In a large bowl, mix the flour, water, milk, sugar, salt, yeast, and butter.",
                               "Once the dough starts to clump, turn it out onto a clean counter.",
                               "Lightly knead the dough and form it into a ball, making sure not to over-knead it.",
                               "Cover the dough with plastic wrap and refrigerate for one hour.",
                               "Slice the cold butter in thirds and place it onto a sheet of parchment paper..",
                               "Place another piece of parchment on top of the butter, and beat it with a rolling pin.",
                               "Keeping the parchment paper on the butter, use a rolling pin to roll the butter into a 7-inch (18 cm) square, ½-inch (1 cm) thick. If necessary, use a knife to trim the edges and place the trimmings back on top of the butter and continue to roll into a square.",
                               "Transfer the butter layer to the refrigerator.",
                               "To roll out the dough, lightly flour the counter. Place the dough on the counter, and push the rolling pin once vertically into the dough and once horizontally to form four quadrants.",
                               "Roll out each corner and form a 10-inch (25 cm) square.",
                               "Place the butter layer on top of the dough and fold the sides of the dough over the butter, enclosing it completely.",
                               "Roll the dough with a rolling pin to seal the seams, making sure to lengthen the dough, rather than widening it.",
                               "Transfer the dough to a baking sheet and cover with plastic wrap. Refrigerate for 1 hour.",
                               "Roll out the dough on a floured surface until it’s 8x24 inches (20x61 cm).",
                               "Fold the top half down to the middle, and brush off any excess flour.",
                               "Fold the bottom half over the top and turn the dough clockwise to the left. This completes the first turn.",
                               "Cover and refrigerate for one hour.",
                               "Roll out the dough again two more times, completing three turns in total and refrigerating for 1 hour in between each turn. If at anytime the dough or butter begins to soften, stop and transfer back to the fridge.",
                               "After the final turn, cover the dough with plastic wrap and refrigerate overnight.",
                               "To form the croissants, cut the dough in half. Place one half in the refrigerator.",
                               "Flour the surface and roll out the dough into a long narrow strip, about 8x40 inches (20x101 cm).",
                               "With a knife, trim the edges of the dough.",
                               "Cut the dough into 4 rectangles.",
                               "Place the chocolate on the edge of the dough and roll tightly enclosing it in the dough.",
                               "Place the croissants on a baking sheet, seam side down.",
                               "Repeat with the other half of the dough.",
                               "Brush the croissants with the beaten egg. Save the rest of the egg wash in the fridge for later.",
                               "Place the croissants in a warm place to rise for 1-2 hours.",
                               "Preheat oven to 400°F (200°C).",
                               "Once the croissants have proofed, brush them with one more layer of egg wash.",
                               "Bake for 15 minutes or until golden brown and cooked through. Serve warm.",
                               "Enjoy!"]
        
        let steps7:[String] = ["Preheat oven to 400",
                               "Cook bacon in a cast iron pan over medium heat. Once bacon fat coats the pan, add the brussel sprouts, salt, pepper, apple cider vinegar, brown sugar, and garlic. Stir until fully coated.",
                               "Cook until the bottom of the brussel sprouts begin to brown.",
                               "Transfer the cast iron pan to the oven and roast for 20 minutes, or until tender, flipping the brussel sprouts over every 5 minutes or so",
                               "Sprinkle Parmesan cheese evenly over the brussel sprouts, then place the pan back in the oven and bake for another 3 to 5 minutes.",
                               "Sprinkle with additional bacon and chives then serve!"]
        
        let steps9:[String] = ["In a baking dish with the steak, mix the soy sauce, garlic, ginger, honey, and lime juice.",
                               "Lightly massage the marinade into the steak and cover. Marinate for 1-4 hours",
                               "Place toothpicks in a bowl and pour water over toothpicks, let soak.",
                               "Once marinated, cut steak into 8 rectangles.",
                               "Place a few slices of each vegetable on each slice of steak.",
                               "Roll the steak up over the vegetables and secure with toothpick.",
                               "In a small saucepan over medium heat, pour in the leftover marinade and bring to a boil.",
                               "Boil for about one minute, take off the heat, and set aside to use as a glaze.",
                               "In a grill pan, place your steak roll-ups and cook for 2-3 minutes.",
                               "Flip the roll over and use a heat-safe brush to brush the glaze on each roll.",
                               "Cook for about one minute longer, remove and top with sesame seeds. Enjoy!"
        ]
        
        guard let recipe1 = Recipe(name:"Lemon Poppy Pancakes", photo: photo1!, rating: 4, ingredients:ingredients1, steps:steps1, prepTime:"15 min") else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let recipe2 = Recipe(name:"Avacado Pasta", photo: photo2!, rating: 5, ingredients:ingredients2, steps:steps2, prepTime:"20 min") else {
            fatalError("Unable to instantiate meal2")
        }
        
        guard let recipe3 = Recipe(name:"Ratatouille", photo: photo3!, rating: 3, ingredients:ingredients3, steps:steps3, prepTime:"40-60 min") else {
            fatalError("Unable to instantiate meal3")
        }
        
        guard let recipe4 = Recipe(name:"Carrot Cake", photo: photo4!, rating: 2, ingredients:ingredients4, steps:steps4, prepTime:"60 min") else {
            fatalError("Unable to instantiate meal4")
        }
        
        guard let recipe5 = Recipe(name:"Chicken Roll Ups", photo: photo5!, rating: 4, ingredients:ingredients5, steps:steps5, prepTime:"15 min") else {
            fatalError("Unable to instantiate meal5")
        }
        
        guard let recipe6 = Recipe(name:"Chocolate Croissant", photo: photo6!, rating: 4, ingredients:ingredients6, steps:steps6, prepTime:"30-45 min") else {
            fatalError("Unable to instantiate meal6")
        }
        
        guard let recipe7 = Recipe(name:"Roasted Brussel Sprouts", photo: photo7!, rating: 5, ingredients:ingredients7, steps:steps7, prepTime:"10 min") else {
            fatalError("Unable to instantiate meal7")
        }
        
        guard let recipe9 = Recipe(name:"Steak Roll-Ups", photo: photo9!, rating: 5, ingredients:ingredients9, steps:steps9, prepTime:"25 min") else {
            fatalError("Unable to instantiate meal9")
        }
        
        recipes += [recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe9]
    }
}
