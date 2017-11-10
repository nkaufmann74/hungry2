//
//  RecipeViewController.swift
//  Hungry
//
//  Created by Rebekkah Koo on 10/31/17.
//  Copyright © 2017 Rebekkah Koo. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var recipeLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var stepsLabel: UILabel!
    
    var recipe:Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = recipe.name
        recipeLabel.text = recipe.name
        
        var ingredientsList:String = ""
        for ingredient in recipe.ingredients {
            ingredientsList += ingredient + "\n"
        }
        ingredientsLabel.text = ingredientsList
        
        var stepsList:String = ""
        for step in recipe.steps {
            stepsList += step + "\n"
        }
        stepsLabel.text = stepsList
        
        ratingControl.rating = recipe.rating
        photoImageView.image = recipe.photo
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
