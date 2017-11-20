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
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var stepsLabel: UILabel!
    
    var recipe:Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = recipe.name
        ingredientsLabel.lineBreakMode = .byWordWrapping
        ingredientsLabel.numberOfLines = 0
        stepsLabel.lineBreakMode = .byWordWrapping
        stepsLabel.numberOfLines = 0
        
        
        var ingredientsList:String = ""
        let bulletPt = "•"
        for ingredient in recipe.ingredients {
            ingredientsList += "\(bulletPt) " + "\(ingredient)\n"
        }
        ingredientsLabel.text = ingredientsList
        
        var stepsList:String = ""
        var i = 1
        for step in recipe.steps {
            stepsList += "\(i). " + "\(step)\n\n"
            i+=1
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
